package com.a305.travelmaker.global.common.jwt;

import static java.time.LocalDateTime.now;

import com.a305.travelmaker.domain.login.data.OauthTokenRes;
import com.a305.travelmaker.domain.user.domain.User;
import io.jsonwebtoken.*;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import io.jsonwebtoken.security.SecurityException;
import java.security.Key;
import java.util.Date;
import java.sql.Timestamp;
import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class TokenProvider {

    private static final String AUTHORITIES_KEY = "auth";
    private static final String BEARER_TYPE = "bearer";
    private static final int ACCESS_TOKEN_EXPIRE_TIME = 1000 * 60 * 30; // 30분
    private static final int REFRESH_TOKEN_EXPIRE_TIME = 1000 * 60 * 60 * 24 * 7; // 7일
    private static final String ISS = "http://kauth.kakao.com";
    private static final String AUD = "https://i10a704.p.ssafy.io/";
    private Key key;

    // application.yml에서 주입받은 secret 값을 base64 decode하여 key 변수에 할당
    public TokenProvider(@Value("${oauth2.jwt.secret}") String secret) {
        byte[] keyBytes = Decoders.BASE64.decode(secret);
        this.key = Keys.hmacShaKeyFor(keyBytes);
    }

    // Authentication 객체에 포함되어 있는 권한 정보들을 담은 토큰을 생성
    public OauthTokenRes generateTokenDto(User user) {
        long now = (new Date().getTime());

        //Access Toekn
        String accessToken = Jwts.builder()
            .claim("nickname", user.getNickname())
            .signWith(key, SignatureAlgorithm.HS512)
            .setIssuer(ISS)
            .setAudience(AUD)
            .setSubject(String.valueOf(user.getId()))
            .setIssuedAt(Timestamp.valueOf(now()))
            .setExpiration(new Date(now + ACCESS_TOKEN_EXPIRE_TIME))
            .compact();
        // Refresh Token 생성
        String refreshToken = Jwts.builder()
            .signWith(key, SignatureAlgorithm.HS512)
            .setIssuer(ISS)
            .setAudience(AUD)
            .setSubject(String.valueOf(user.getId()))
            .setIssuedAt(Timestamp.valueOf(now()))
            .setExpiration(new Date(now + REFRESH_TOKEN_EXPIRE_TIME))
            .compact();

        return OauthTokenRes.builder()
            .userId(user.getId()).accessToken(accessToken)
            .tokenType(BEARER_TYPE)
            .expiresIn(ACCESS_TOKEN_EXPIRE_TIME - 1)
            .refreshToken(refreshToken)
            .refreshTokenExpiresIn(REFRESH_TOKEN_EXPIRE_TIME)
            .build();
    }

    private Claims parseClaims(String accessToken) {
        try {
            return Jwts.parserBuilder().setSigningKey(key).build().parseClaimsJws(accessToken)
                .getBody();
        } catch (ExpiredJwtException e) {
            return e.getClaims();
        }
    }

    // Access 토큰을 복호화하여 검증
    // 검증 후 값 가져오는 로직은 아직 고민 중
//    public UserDetailAuthenticationToken getAuthentication(String accessToken) {
//
//        Claims claims = parseClaims(accessToken);
//
//        return null;
//    }
}

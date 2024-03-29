package com.a305.travelmaker.domain.user.service;

import com.a305.travelmaker.domain.travel.entity.Travel;
import com.a305.travelmaker.domain.travel.repository.TravelRepository;
import java.time.LocalDate;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service // 이 어노테이션이 추가되어야 스프링이 해당 클래스를 빈으로 등록합니다.
@RequiredArgsConstructor
public class SchedulingService {

    private final TravelRepository travelRepository;
    private final UserService userService;

    // 매일 오후 3시에 실행되는 스케줄링 메서드
    @Scheduled(cron = "0 0 15 * * *")
    public void updateUsersBasedOnTravelDates() {
        // 현재 날짜를 가져옵니다.
        LocalDate today = LocalDate.now();

        // 모든 여행 데이터를 불러옵니다.
        List<Travel> travels = travelRepository.findAll();

        // 검색된 여행 목록을 순회합니다.
        for (Travel travel : travels) {
            // 여행이 종료된 경우
            if (today.isAfter(travel.getEndDate())) {
                // 여행 참여자의 사용자 상태를 업데이트합니다.
                updateUserStatusAfterCourse(travel.getUser().getId());
                // 여행 친구들의 사용자 상태도 함께 업데이트합니다.
                String[] friendIds = travel.getFriends().split(", ");
                for (String friendId : friendIds) {
                    updateUserStatusAfterCourse(Long.parseLong(friendId));
                }
            } else if (today.isAfter(travel.getStartDate()) || today.equals(travel.getStartDate())) {
                // 여행이 시작된 경우 또는 오늘이 여행의 시작일인 경우
                // 사용자의 상태를 "ON_COURSE"로 업데이트합니다.
                updateUserStatusOnCourse(travel.getUser().getId());
                String[] friendIds = travel.getFriends().split(", ");
                for (String friendId : friendIds) {
                    updateUserStatusOnCourse(Long.parseLong(friendId));
                }
            }
        }
    }

    // 사용자의 상태를 "AFTER_COURSE"로 업데이트하는 메서드
    private void updateUserStatusAfterCourse(Long userId) {
        userService.updateUserStatusAfterCourse(userId);
    }

    // 사용자의 상태를 "ON_COURSE"로 업데이트하는 메서드
    private void updateUserStatusOnCourse(Long userId) {
        userService.updateUserStatusOnCourse(userId);
    }
}
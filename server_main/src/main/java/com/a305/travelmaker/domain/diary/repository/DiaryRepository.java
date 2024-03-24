package com.a305.travelmaker.domain.diary.repository;

import com.a305.travelmaker.domain.diary.entity.Diary;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DiaryRepository extends JpaRepository<Diary, Integer> {

}

package com.kh.onsoo.study.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.onsoo.study.model.dto.StudyDto;
import com.kh.onsoo.study.model.dto.StudyImageDto;
import com.kh.onsoo.study.model.biz.StudyWithBiz;
import com.kh.onsoo.study.model.dao.StudyWithDao;

@Service
public class StudyWithBizImpl implements StudyWithBiz {

	@Autowired
	private StudyWithDao studyDao;
	
	@Override
	public List<StudyDto> selectListTeacher() {
		return studyDao.selectListTeacher();
	}

	@Override
	public List<StudyImageDto> selectList() {
		return studyDao.selectList();
	}
	
	@Override
	public int selectNum() {
		return studyDao.selectNum();
	}
	
	@Override
	public StudyDto selectOne(int class_no) {
		return studyDao.selectOne(class_no);
	}

	@Override
	public int insert(StudyDto dto) {
		return studyDao.insert(dto);
	}

	@Override
	public int update(StudyDto dto) {
		return studyDao.update(dto);
	}

	@Override
	public int delete(int class_no) {
		return studyDao.delete(class_no);
	}

}

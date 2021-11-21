package fun.tayo.app.service.impl;

import fun.tayo.app.dto.ResponseData;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fun.tayo.app.dao.ProfileDao;
import fun.tayo.app.dto.Member;
import fun.tayo.app.dto.MemberSession;
import fun.tayo.app.dto.UploadFile;
import fun.tayo.app.service.face.ProfileService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

@RequiredArgsConstructor
@Slf4j
@Service
public class ProfileServiceImpl implements ProfileService {
	
	private final ProfileDao profileDao;
	
	@Override
	public Member info(int memberId) {
		log.debug("info() memberId : {}", memberId);
		
		return profileDao.selectMemberById(memberId);
	}
	
	@Override
	@Transactional
	public ResponseData update(Member member, String target, String value) {

		final ResponseData validation = isValidation(target, value);
		if(!validation.getResult()) {
			return validation;
		}
		
		//유효성검사 통과
		switch (target) {
			case "name":
				member.setName(value);
				break;
			case "phone":
				member.setPhone(value);
				break;
			case "password":
				member.setPassword(value);
				break;
		}

		profileDao.update(member);
		return validation;
	}

	private ResponseData isValidation(String target, String value) {
		if(!StringUtils.hasText(value)) {
			return new ResponseData(false, "값을 입력해주세요!");
		}

		//유효성검사 내용 채우기
		switch (target) {
			case "name":

				break;
			case "phone":

				break;
			case "password":

				break;
		}

		return new ResponseData(true, "ok");
	}
	
}

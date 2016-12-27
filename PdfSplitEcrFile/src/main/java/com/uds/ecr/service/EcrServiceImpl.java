package com.uds.ecr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uds.ecr.dao.EcrDao;

import antlr.collections.List;

@Service
@Transactional
public class EcrServiceImpl implements EcrService {
	
	
	@Autowired
	private EcrDao ecrDao;

	public List sendDetails(String branch, String month, String year) {
		// TODO Auto-generated method stub
		return ecrDao.sendDetails(branch,month,year);
		
	}

}

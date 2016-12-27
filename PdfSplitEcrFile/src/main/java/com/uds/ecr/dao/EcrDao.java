package com.uds.ecr.dao;

import antlr.collections.List;

public interface EcrDao {

	List sendDetails(String branch, String month, String year);

}

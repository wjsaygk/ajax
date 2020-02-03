package com.sari.demo.repository;

import java.util.List;

import com.sari.demo.model.LG;
import com.sari.demo.model.PlayerLg;
import com.sari.demo.model.PlayerSa;
import com.sari.demo.model.Samsung;

public interface TeamRepository {
	List<Samsung> findAll();
	List<Samsung> SamsungAll();
	List<LG> findLGAll();
	List<LG> LGAll();
	List<PlayerSa> findPSaAll();
	List<PlayerLg> findPLgAll();
}

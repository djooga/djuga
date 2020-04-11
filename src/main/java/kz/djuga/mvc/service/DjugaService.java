package kz.djuga.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kz.djuga.mvc.repo.DjugaRepo;

@Service
public class DjugaService {
	@Autowired
	private DjugaRepo djugaRepo;
	
	
}

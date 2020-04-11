package kz.djuga.mvc.service;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kz.djuga.mvc.domain.Role;
import kz.djuga.mvc.domain.User;
import kz.djuga.mvc.repo.UserRepo;

@Service
public class UserService implements UserDetailsService{

	@Autowired
	private UserRepo userRepo;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return userRepo.findByUsername(username);
	}

	public boolean saveUser(User user) {
		User userFromDB = userRepo.findByUsername(user.getUsername());
		if(userFromDB!=null)
			return false;
		user.setActive(true);
		user.setRoles(Collections.singleton(Role.USER));
		userRepo.save(user);
		return true;
	}
	
}

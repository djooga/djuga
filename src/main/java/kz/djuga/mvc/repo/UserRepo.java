package kz.djuga.mvc.repo;


import org.springframework.data.jpa.repository.JpaRepository;

import kz.djuga.mvc.domain.User;

public interface UserRepo extends JpaRepository<User, Long>{

	User findByUsername(String username);
	
}

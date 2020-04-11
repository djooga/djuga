package kz.djuga.mvc.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import kz.djuga.mvc.domain.Djuga;

public interface DjugaRepo extends JpaRepository<Djuga, Long> {

}

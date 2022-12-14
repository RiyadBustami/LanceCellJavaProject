package com.rrmm.lancecell.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rrmm.lancecell.models.Programmer;
@Repository
public interface ProgrammerRepository extends CrudRepository<Programmer, Long> {
	List<Programmer> findAll();
	Optional<Programmer> findByEmail(String email);
}


package com.hcl.service;

import java.util.Date;

import java.util.List;
import java.util.Optional;

import com.hcl.model.Task;

public interface ITaskService {

	List<Task> getTasksByUser(String user);

	Optional<Task> getTaskById(long id);

	void updateTask(Task task);

	//void addTask(String name, String desc, Date targetDate, boolean isDone);

	void deleteTask(long id);
	
	void saveTask(Task task);

}
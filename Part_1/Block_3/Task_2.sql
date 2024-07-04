BEGIN;
INSERT INTO users(id, name, middle_name, last_name, job_title, phone)
	VALUES(1, 'Sergey', 'Sergeevich', 'Sergeev', 'team-lead', 11-11),
		  (2, 'Ivan', 'Ivanovich', 'Ivanov', 'manager', 11-12),
		  (3, 'Pavel', 'Pavlovich', 'Pavlov', 'manager', 11-13);
COMMIT;
BEGIN;
INSERT INTO users(name, middle_name, last_name, job_title, phone)
	VALUES('Sergey', 'Sergeevich', 'Sergeev', 'team-lead', '11-11'),
		  ('Ivan', 'Ivanovich', 'Ivanov', 'manager', '11-12'),
		  ('Pavel', 'Pavlovich', 'Pavlov', 'manager', '11-13');
SAVEPOINT 	users_insert;
SELECT
	name,
	last_name,
	phone,
	job_title
FROM
	users;
ROLLBACK users_insert;
COMMIT;
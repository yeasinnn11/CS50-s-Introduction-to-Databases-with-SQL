CREATE INDEX edx_courses_department ON courses(department);

CREATE INDEX edx_courses_title ON courses(title);

CREATE INDEX edx_courses_department_num_sem ON courses(department, number, semester);


CREATE INDEX edx_enrollments_student_course ON enrollments(student_id, course_id);

CREATE INDEX edx_enrollments_course ON enrollments(course_id);


CREATE INDEX edx_satisfies_course ON satisfies(course_id);

CREATE INDEX edx_satisfies_requirement ON satisfies(requirement_id);

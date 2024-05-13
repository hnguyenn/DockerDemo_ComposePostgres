-- Xóa bảng nếu đã tồn tại
DROP TABLE IF EXISTS students, employers, workstations, schedules, paychecks, ratings, jobtitles, student_schedules, student_ratings, student_jobtitles, workstation_schedules CASCADE;

-- Tạo bảng students
CREATE TABLE students(
    student_SUID INT NOT NULL,
    student_firstname VARCHAR(50) NOT NULL,
    student_lastname VARCHAR(50) NOT NULL,
    student_hiredate DATE NOT NULL,
    student_jobtitle VARCHAR(50) NOT NULL,
    student_payrate INT NOT NULL,
    student_employer_name VARCHAR(50) NOT NULL,
    student_workstation_name VARCHAR(50) NOT NULL,
    CONSTRAINT students_PK PRIMARY KEY(student_SUID),
    CONSTRAINT students_UK UNIQUE (student_employer_name,student_workstation_name)
);

-- Tạo bảng employers
CREATE TABLE employers (
    employer_name VARCHAR(50) NOT NULL,
    employer_address VARCHAR(25) NOT NULL,
    employer_contact BIGINT NOT NULL,
    CONSTRAINT employers_PK PRIMARY KEY(employer_name),
    CONSTRAINT employers_UK UNIQUE (employer_contact)
);

-- Tạo bảng workstations
CREATE TABLE workstations (
    workstation_name VARCHAR(50) NOT NULL,
    CONSTRAINT workstation_PK PRIMARY KEY(workstation_name)
);

-- Thêm khóa ngoại cho bảng students
ALTER TABLE students
ADD CONSTRAINT students_FK1 FOREIGN KEY(student_employer_name) REFERENCES employers(employer_name),
ADD CONSTRAINT students_FK2 FOREIGN KEY(student_workstation_name) REFERENCES workstations(workstation_name);

-- Tạo bảng schedules
CREATE TABLE schedules (
    schedule_id SERIAL PRIMARY KEY,
    schedule_from TIME NOT NULL,
    schedule_to TIME NOT NULL,
    schedule_date DATE NOT NULL,
    schedule_day VARCHAR(50) NOT NULL
);

-- Tạo bảng paychecks
CREATE TABLE paychecks (
    paycheck_id SERIAL PRIMARY KEY,
    paycheck_hours INT NOT NULL,
    paycheck_period TIMESTAMP DEFAULT NOW(),
    paycheck_amount INT NOT NULL,
    paycheck_student_SUID INT NOT NULL,
    paycheck_note VARCHAR(25),
    CONSTRAINT paychecks_FK FOREIGN KEY(paycheck_student_SUID) REFERENCES students(student_SUID)
);

-- Tạo bảng ratings
CREATE TABLE ratings (
    rating_id SERIAL PRIMARY KEY,
    ratings VARCHAR(50),
    remark VARCHAR(50)
);

-- Tạo bảng jobtitles
CREATE TABLE jobtitles (
    jobtitle_id INT NOT NULL,
    jobtitle_name VARCHAR(50) NOT NULL,
    CONSTRAINT jobtitles_UK UNIQUE(jobtitle_name),
    CONSTRAINT jobtitle_PK PRIMARY KEY(jobtitle_id)
);

-- Tạo bảng student_schedules
CREATE TABLE student_schedules(
    schedule_id INT NOT NULL,
    student_SUID INT NOT NULL,
    student_schedule VARCHAR(50),
    CONSTRAINT student_schedules_PK PRIMARY KEY(schedule_id, student_SUID),
    CONSTRAINT student_schedules_FK1 FOREIGN KEY (schedule_id) REFERENCES schedules (schedule_id),
    CONSTRAINT student_schedules_FK2 FOREIGN KEY (student_SUID) REFERENCES students (student_SUID)
);

-- Tạo bảng student_ratings
CREATE TABLE student_ratings(
    rating_id SERIAL PRIMARY KEY,
    student_SUID INT NOT NULL,
    ratings FLOAT NOT NULL,
    remark VARCHAR(50),
    CONSTRAINT student_ratings_FK FOREIGN KEY (student_SUID) REFERENCES students (student_SUID)
);

-- Tạo bảng student_jobtitles
CREATE TABLE student_jobtitles(
    student_SUID INT NOT NULL,
    jobtitle_id INT NOT NULL,
    CONSTRAINT student_jobtitles_PK PRIMARY KEY(student_SUID, jobtitle_id),
    CONSTRAINT student_jobtitles_FK1 FOREIGN KEY (jobtitle_id) REFERENCES jobtitles (jobtitle_id),
    CONSTRAINT student_jobtitles_FK2 FOREIGN KEY (student_SUID) REFERENCES students (student_SUID)
);

-- Tạo bảng workstation_schedules
CREATE TABLE workstation_schedules(
    workstation_name VARCHAR(50) NOT NULL,
    schedule_id INT NOT NULL,
    CONSTRAINT workstation_schedules_PK PRIMARY KEY(workstation_name, schedule_id),
    CONSTRAINT workstation_schedules_FK1 FOREIGN KEY (workstation_name) REFERENCES workstations (workstation_name),
    CONSTRAINT workstation_schedules_FK2 FOREIGN KEY (schedule_id) REFERENCES schedules (schedule_id)
);

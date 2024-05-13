-- 1. Insert vào bảng jobtitles
INSERT INTO jobtitles VALUES (1, 'General Employee');
INSERT INTO jobtitles VALUES (2, 'Supervisor');

-- 2. Insert vào bảng workstations
INSERT INTO workstations VALUES ('Deli');
INSERT INTO workstations VALUES ('Hotline');
INSERT INTO workstations VALUES ('Salads');
INSERT INTO workstations VALUES ('Vegan');
INSERT INTO workstations VALUES ('Dishroom');
INSERT INTO workstations VALUES ('Dining Room');
INSERT INTO workstations VALUES ('Express');
INSERT INTO workstations VALUES ('Dessert');
INSERT INTO workstations VALUES ('Beverages');
INSERT INTO workstations VALUES ('Gluten Free');

--- 3. Insert vào bảng employers
INSERT INTO employers VALUES('Sadler Dining', 'Sims Drive street', 6809108108);
INSERT INTO employers VALUES('Graham Dining', 'Comstock street', 6809108121);
INSERT INTO employers VALUES('Ernie Davis Dining', 'University Ave', 6803434565);
INSERT INTO employers VALUES('Shaw Dining', 'Euclid street', 6809809977);
INSERT INTO employers VALUES('Brockway Dining', 'Van Buren street', 6801133242);

--- 4.Insert vào bảng students
INSERT INTO students VALUES (358554918, 'Ankita', 'Vartak', '2021-08-30', 'General Employee', 15, 'Sadler Dining', 'Deli');
INSERT INTO students VALUES (660307939, 'Chaitanya', 'Attarde', '2021-09-02', 'General Employee', 15, 'Sadler Dining', 'Salads');
INSERT INTO students VALUES (859436780, 'Aishwary', 'Patel', '2021-09-04', 'General Employee', 15, 'Ernie Davis Dining', 'Vegan');
INSERT INTO students VALUES (812995446, 'Shivani', 'Pol', '2021-09-01', 'General Employee', 15, 'Graham Dining', 'Salads');
INSERT INTO students VALUES (955036125, 'Vamsy', 'Krishna', '2021-08-31', 'Supervisor', 17, 'Ernie Davis Dining', 'Dishroom');
INSERT INTO students VALUES (411946624, 'Nivesh', 'Vaze', '2021-09-05', 'General Employee', 15, 'Brockway Dining', 'Hotline');
INSERT INTO students VALUES (475885683, 'Anushree', 'Keni', '2021-10-03', 'General Employee', 15, 'Shaw Dining', 'Deli');
INSERT INTO students VALUES (324669421, 'Abhijeet', 'Gokhale', '2021-08-28', 'Supervisor', 17, 'Sadler Dining', 'Vegan');
INSERT INTO students VALUES (452175821, 'Nikita', 'Sirwani', '2021-09-03', 'General Employee', 15, 'Graham Dining', 'Hotline');
INSERT INTO students VALUES (458231945, 'Ruzan', 'Shaikh', '2021-09-15', 'Student Manager', 18, 'Graham Dining', 'Dishroom');

-- 5. Insert vào bảng schedules
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('09:00:00', '13:00:00', '2021-11-22', 'Monday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('13:00:00', '17:00:00', '2021-11-22', 'Monday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('17:00:00', '21:00:00', '2021-11-22', 'Monday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('09:00:00', '13:00:00', '2021-11-23', 'Tuesday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('13:00:00', '17:00:00', '2021-11-23', 'Tuesday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('17:00:00', '21:00:00', '2021-11-23', 'Tuesday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('09:00:00', '13:00:00', '2021-11-24', 'Wednesday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('13:00:00', '17:00:00', '2021-11-24', 'Wednesday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('17:00:00', '21:00:00', '2021-11-24', 'Wednesday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('09:00:00', '13:00:00', '2021-11-25', 'Thursday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('13:00:00', '17:00:00', '2021-11-25', 'Thursday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('17:00:00', '21:00:00', '2021-11-25', 'Thursday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('09:00:00', '13:00:00', '2021-11-26', 'Friday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('13:00:00', '17:00:00', '2021-11-26', 'Friday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('17:00:00', '21:00:00', '2021-11-26', 'Friday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('09:00:00', '13:00:00', '2021-11-27', 'Saturday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('13:00:00', '17:00:00', '2021-11-27', 'Saturday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('17:00:00', '21:00:00', '2021-11-27', 'Saturday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('09:00:00', '13:00:00', '2021-11-28', 'Sunday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('13:00:00', '17:00:00', '2021-11-28', 'Sunday');
INSERT INTO schedules (schedule_from, schedule_to, schedule_date, schedule_day) VALUES ('17:00:00', '21:00:00', '2021-11-28', 'Sunday');

-- 6. Insert vào bảng workstation_schedules
INSERT INTO workstation_schedules (workstation_name, schedule_id) VALUES ('Deli', 1);

-- 7. Insert vào bảng student_schedules
INSERT INTO student_schedules VALUES
(1, 358554918, 'Ankita_shift'),
(2, 458231945, 'Ruz shift');

-- 8. Insert vào bảng student_ratings
INSERT INTO student_ratings VALUES
(1, 358554918, 4, 'By Abhijeet'),
(2, 358554918, 5, 'By Abhijeet');

-- 9. Insert vào bảng paychecks
INSERT INTO paychecks (paycheck_hours, paycheck_amount, paycheck_student_suid, paycheck_note) VALUES
(4, 60, 358554918, 'Abhijeet paycheck'),
(4, 60, 358554918, 'Ankita paycheck'),
(4, 60, 458231945, 'Abhijeet paycheck');
-- Tạo một view truy vấn thông tin lịch của các sinh viên làm việc tại "Sadler Dining".
CREATE VIEW "Sadler Schedule" AS
SELECT 
    s.student_SUID, 
    s.student_firstname || ' ' || s.student_lastname AS student_name, 
    s.student_jobtitle, 
    e.employer_name, 
    w.workstation_name, 
    sc.schedule_from, 
    sc.schedule_to, 
    sc.schedule_date, 
    sc.schedule_day
FROM 
    students s
JOIN 
    employers e ON s.student_employer_name = e.employer_name
JOIN 
    workstations w ON s.student_workstation_name = w.workstation_name
JOIN 
    student_schedules ss ON s.student_SUID = ss.student_SUID
JOIN 
    schedules sc ON ss.schedule_id = sc.schedule_id
WHERE 
    e.employer_name = 'Sadler Dining';


-- View hiển thị thông tin về lịch trình của các sinh viên làm việc tại "Graham Dining",
CREATE VIEW "Graham Schedule" AS
SELECT 
    s.student_SUID, 
    s.student_firstname || ' ' || s.student_lastname AS student_name, 
    s.student_jobtitle, 
    e.employer_name, 
    w.workstation_name, 
    sc.schedule_from, 
    sc.schedule_to, 
    sc.schedule_date, 
    sc.schedule_day
FROM 
    students s
JOIN 
    employers e ON s.student_employer_name = e.employer_name
JOIN 
    workstations w ON s.student_workstation_name = w.workstation_name
JOIN 
    student_schedules ss ON s.student_SUID = ss.student_SUID
JOIN 
    schedules sc ON ss.schedule_id = sc.schedule_id
WHERE 
    e.employer_name = 'Graham Dining';


-- View hiển thị thông tin về lịch trình của các sinh viên làm việc tại "Ernie Davis Dining",
CREATE VIEW "Ernie Davis Dining" AS
SELECT 
    s.student_SUID, 
    s.student_firstname || ' ' || s.student_lastname AS student_name, 
    s.student_jobtitle, 
    e.employer_name, 
    w.workstation_name, 
    sc.schedule_from, 
    sc.schedule_to, 
    sc.schedule_date, 
    sc.schedule_day
FROM 
    students s
JOIN 
    employers e ON s.student_employer_name = e.employer_name
JOIN 
    workstations w ON s.student_workstation_name = w.workstation_name
JOIN 
    student_schedules ss ON s.student_SUID = ss.student_SUID
JOIN 
    schedules sc ON ss.schedule_id = sc.schedule_id
WHERE 
    e.employer_name = 'Ernie Davis Dining';


-- View hiển thị thông tin về lịch trình của các sinh viên làm việc tại "Shaw Dining",
CREATE VIEW "Shaw Dining" AS
SELECT 
    s.student_SUID, 
    s.student_firstname || ' ' || s.student_lastname AS student_name, 
    s.student_jobtitle, 
    e.employer_name, 
    w.workstation_name, 
    sc.schedule_from, 
    sc.schedule_to, 
    sc.schedule_date, 
    sc.schedule_day
FROM 
    students s
JOIN 
    employers e ON s.student_employer_name = e.employer_name
JOIN 
    workstations w ON s.student_workstation_name = w.workstation_name
JOIN 
    student_schedules ss ON s.student_SUID = ss.student_SUID
JOIN 
    schedules sc ON ss.schedule_id = sc.schedule_id
WHERE 
    e.employer_name = 'Shaw Dining';


-- View hiển thị thông tin về lịch trình của các sinh viên làm việc tại "Brockway Dining",
CREATE VIEW "Brockway Dining" AS
SELECT 
    s.student_SUID, 
    s.student_firstname || ' ' || s.student_lastname AS student_name, 
    s.student_jobtitle, 
    e.employer_name, 
    w.workstation_name, 
    sc.schedule_from, 
    sc.schedule_to, 
    sc.schedule_date, 
    sc.schedule_day
FROM 
    students s
JOIN 
    employers e ON s.student_employer_name = e.employer_name
JOIN 
    workstations w ON s.student_workstation_name = w.workstation_name
JOIN 
    student_schedules ss ON s.student_SUID = ss.student_SUID
JOIN 
    schedules sc ON ss.schedule_id = sc.schedule_id
WHERE 
    e.employer_name = 'Brockway Dining';


---------------VIEW CÁC SINH VIÊN TẠI TỪNG DINING CỤ THỂ----------------------
-- View hiển thị tất cả các thông tin của sinh viên làm việc tại "Sadler Dining"
CREATE VIEW "Sadler Students" AS
SELECT *
FROM students 
JOIN employers ON students.student_employer_name = employers.employer_name
WHERE employers.employer_name = 'Sadler Dining';

-- View hiển thị tất cả các thông tin của sinh viên làm việc tại "Graham Dining"
CREATE VIEW "Graham Students" AS
SELECT *
FROM students 
JOIN employers ON students.student_employer_name = employers.employer_name
WHERE employers.employer_name = 'Graham Dining';

-- View hiển thị tất cả các thông tin của sinh viên làm việc tại "Ernie Davis Dining"
CREATE VIEW "Ernie Davis Students" AS
SELECT *
FROM students 
JOIN employers ON students.student_employer_name = employers.employer_name
WHERE employers.employer_name = 'Ernie Davis Dining';

-- View hiển thị tất cả các thông tin của sinh viên làm việc tại "Shaw Dining"
CREATE VIEW "Shaw Students" AS
SELECT *
FROM students 
JOIN employers ON students.student_employer_name = employers.employer_name
WHERE employers.employer_name = 'Shaw Dining';

-- View hiển thị tất cả các thông tin của sinh viên làm việc tại "Brockway Dining"
CREATE VIEW "Brockway Students" AS
SELECT *
FROM students 
JOIN employers ON students.student_employer_name = employers.employer_name
WHERE employers.employer_name = 'Brockway Dining';


---------------VIEW CHO RATING----------------------

CREATE VIEW "V1_Student Ratings" AS
SELECT 
    sr.student_SUID, 
    s.student_firstname, 
    s.student_lastname, 
    sr.ratings, 
    sr.remark 
FROM 
    students s 
JOIN 
    student_ratings sr ON s.student_SUID = sr.student_SUID;


-- Chi tiết về một nhân viên cụ thể
CREATE VIEW "StudentDetails" AS
SELECT 
    s.student_SUID, 
    s.student_firstname || ' ' || s.student_lastname AS "Employee Name", 
    s.student_employer_name, 
    s.student_workstation_name, 
    sc.schedule_day, 
    sc.schedule_date, 
    sc.schedule_from, 
    sc.schedule_to   
FROM 
    students s
JOIN 
    student_schedules ss ON s.student_SUID = ss.student_SUID
JOIN 
    schedules sc ON ss.schedule_id = sc.schedule_id
WHERE 
    s.student_SUID = '358554918';


-- Tất cả các chi tiết bao gồm tổng số tiền thanh toán
SELECT 
    s.student_SUID, 
    s.student_firstname || ' ' || s.student_lastname AS "Employee Name", 
    s.student_employer_name, 
    s.student_workstation_name, 
    sc.schedule_day, 
    sc.schedule_date, 
    sc.schedule_from, 
    sc.schedule_to, 
    SUM(p.paycheck_amount) 
FROM 
    students s
JOIN 
    student_schedules ss ON s.student_SUID = ss.student_SUID
JOIN 
    schedules sc ON ss.schedule_id = sc.schedule_id
JOIN 
    paychecks p ON s.student_SUID = p.paycheck_student_SUID
GROUP BY 
    p.paycheck_student_SUID, s.student_SUID, s.student_firstname, s.student_lastname, s.student_employer_name,
    s.student_workstation_name, sc.schedule_day, sc.schedule_date, sc.schedule_from, sc.schedule_to;


-- Chi tiết paychecks
CREATE VIEW "Paycheck Data" AS
SELECT 
    s.student_firstname || ' ' || s.student_lastname AS "Student Name",
    s.student_employer_name, 
    p.paycheck_student_SUID, 
    SUM(p.paycheck_amount) AS "Total paycheck amount" 
FROM 
    paychecks p
JOIN 
    students s ON p.paycheck_student_SUID = s.student_SUID
GROUP BY 
    p.paycheck_student_SUID, s.student_firstname, s.student_lastname, s.student_employer_name;


-- Đánh giá trung bình của một nhân viên
CREATE VIEW "Average Rating View" AS
SELECT 
    s.student_firstname || ' ' || s.student_lastname AS "Student Name", 
    s.student_SUID, 
    AVG(sr.ratings) AS "Average Rating", 
    s.student_employer_name 
FROM 
    student_ratings sr
JOIN 
    students s ON s.student_SUID = sr.student_SUID
GROUP BY 
    sr.student_SUID, s.student_firstname, s.student_lastname, s.student_SUID, s.student_employer_name;
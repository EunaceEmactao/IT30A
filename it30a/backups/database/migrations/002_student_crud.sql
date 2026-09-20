-- Student Query #1
SELECT * FROM students;

-- Student Query #2 - select students order by id ASC
SELECT * FROM students
    ORDER BY student_id ASC;

-- Student Query #3 - select students order by id DESC
SELECT * FROM students
    ORDER BY student_id DESC;

-- i arrange ang content sa table 

-- Student Query #4 - select students order by last_name ASC

SELECT 
    student_last_name,
    student_first_name
FROM students
ORDER BY student_last_name ASC;


-- Student Query #5 - select students order by last_name DESC

SELECT
    student_last_name,
    student_first_name
FROM students
ORDER BY student_last_name DESC;



-- Student Query #6 - select students order by first_name ASC

SELECT 
    student_first_name,
    student_last_name
FROM students
ORDER BY student_first_name ASC;


-- Student Query #7 - select students order by first_name DESC

SELECT
    student_first_name,
    student_last_name
FROM students
ORDER BY student_first_name DESC;


-- Student Query #8 - select student with specific id number

SELECT
    student_first_name,
    student_last_name
FROM students
WHERE student_id = 1
LIMIT 1;

-- Student Query #9 - update student firstname, lastname using specific id number

UPDATE students
SET
    student_first_name = 'Thea',
    student_last_name = 'Gwapa'
WHERE student_id = 1;

-- maoni ang practical exam for prelim









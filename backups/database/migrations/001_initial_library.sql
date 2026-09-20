-- Table 1 books

CREATE TABLE IF NOT EXISTS students (

    -- primary key for the students table
    student_id INT AUTO_INCREMENT PRIMARY KEY,

    -- student name 
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,

    -- student course
    student_course VARCHAR(50) NOT NULL,

    -- student created at timestamp
    student_created_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP 

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;


-- Table 2 books

CREATE TABLE IF NOT EXISTS books (
-- primary key for books table

book_id INT AUTO_INCREMENT PRIMARY KEY,

-- book details
book_title VARCHAR(50) NOT NULL,
book_author VARCHAR(100) NOT NULL,
book_category VARCHAR(50) NOT NULL,


-- book created at timestamp
   book_created_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP


) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;



-- Table 3 borrow 

CREATE TABLE IF NOT EXISTS borrow (
-- primary key for borrow table
borrow_id INT AUTO_INCREMENT PRIMARY KEY,

-- foreign key references 
student_id INT NOT NULL,
book_id INT NOT NULL,

-- borrow timestamp not null by default
borrow_date TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP,

-- borrow return timestamp null by default
borrow_return_date TIMESTAMP NULL
    DEFAULT NULL,

-- borrow table constraints and foreign keys 
CONSTRAINT fk_borrow_student
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    -- CONSTRAINT: PROVIDE PROTECTION DURING DELETION

CONSTRAINT fk_borrow_book
    FOREIGN KEY (book_id)
    REFERENCES books(book_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT 

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;



-- insert statement 1: insert students

INSERT INTO students (
student_first_name,
student_last_name,
student_course
) VALUES 
('Eunace', 'Emactao', 'BSIT'),
('John Lester', 'Toribio', 'BSIT'),
('Pipo','Emactao','BEED'),
('Sputtie', 'Lerongan', 'BEED');



-- insert statement 2: insert books

INSERT INTO books (
    book_title,
    book_author,
    book_category
) VALUES
    ('Hunger Games', 'Suzanne Collins', 'Science Fiction'),
    ('Sherlock Holmes', 'Arthur Conan Dolye', 'Fiction'),
    ('Hes Into Her', 'Maxinejiji', 'Romance');


-- insert statement 3: insert 

INSERT INTO borrow (
    student_id,
    book_id
) VALUES
    (4, 1),
    (3, 2),
    (1, 3);
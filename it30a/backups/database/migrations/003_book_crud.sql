


-- Book Query #1
SELECT * FROM books;

-- Book Query #2 - select books order by id ASC
SELECT * FROM books
    ORDER BY book_id ASC;

-- Book Query #3 - select books order by id DESC
SELECT * FROM books
    ORDER BY book_id DESC;

-- Book Query #4 - select books order by book title ASC
SELECT 
    book_title,
    book_author,
    book_category
FROM books
ORDER BY book_title ASC;

-- Book Query #5 - select books order by book title DESC
SELECT 
    book_title,
    book_author,
    book_category
FROM books
ORDER BY book_title DESC;

-- Book Query #6 - select books order by book author ASC
SELECT 
    book_author,
    book_title,
    book_category
FROM books
ORDER BY book_author ASC;

-- Book Query #7 - select books order by book author DESC
SELECT 
    book_author,
    book_title,
    book_category
FROM books
ORDER BY book_author DESC;

-- Book Query #8 - select books order by book category ASC
SELECT 
    book_category,
    book_author,
    book_title
FROM books
ORDER BY book_category ASC;

-- Book Query #9 - select books order by book category DESC
SELECT 
    book_category,
    book_author,
    book_title
FROM books
ORDER BY book_category DESC;


-- Book Query #10 - select book with specific id number

SELECT
    book_title,
    book_author,
    book_category
FROM books
WHERE book_id = 1
LIMIT 1;

-- Book Query #11 - update book title, author, and category using specific id number

UPDATE books
SET
    book_title = 'El Filibusterismo',
    book_author = 'Jose Protacio Rizal Mercado y Alonso Realonda',
    book_category = 'Novel'
WHERE book_id = 1;

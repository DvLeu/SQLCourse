CREATE TABLE solar_eclipse
(
	eclipse_date date,
    time_of_greatest_eclipse time,
    eclipse_type varchar(10),
    magnitude decimal(4,3)
);

-- STRING DATA TYPES
-- CHAR
CREATE TABLE country_code
(
country_code char(3)
);

-- VARCHAR
CREATE TABLE interesting_people
(
	interesting_people varchar(100)
);

-- ENUM 
CREATE TABLE student
(
	student_id int, 
    student_class enum('Freshman','Sophomore','Junior','Senior')
);

-- SET
CREATE TABLE interpreter
(
	interpreter_id int, 
    interpreter_spoke set('English','German', 'French', 'Spanish')
);

-- TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT
CREATE TABLE book
(
	book_id int, 
    author_bio tinytext,
    book_proposal text,
    entire_book mediumtext
);


-- BINARY DATA TYPES
-- BINARY 

CREATE TABLE encryption
(
	key_id int, 
	encryption_key binary(50)
);

CREATE TABLE signature
(
	signature_id int,
    signature varbinary(400)
);


-- NUMERICAL DATA TYPES
-- TINYINT SMALLINT INT BIGINT

CREATE TABLE planet_stat
(
	planet varchar(20),
    miles_from_earth bigint, 
    diameter_km mediumint
);
-- UNSIGNED
CREATE TABLE planet_stat
(
	planet varchar(20),
    miles_from_earth int unsigned, -- Now using int unsigned, not bigint
    diameter_km mediumint
);


-- BOOLEAN

CREATE TABLE food
(
	food varchar(30),
    organic_flag bool,
    gluten_free_flag bool
);


CREATE TABLE Readers (
reader_id INT PRIMARY KEY,
FULL_name_reader VARCHAR (255),
Telephone VARCHAR (11)
);

CREATE TABLE Loan (
loan_id INT PRIMARY KEY,
reader_id INT,
isbn INT,
data_loan DATE,
data_of_issuance DATE,
actual_return_date DATE,
FOREIGN KEY (reader_id) REFERENCES Readers (reader_id),
FOREIGN KEY (isbn) REFERENCES Book (isbn)
);
  
CREATE TABLE Book (
isbn INT PRIMARY KEY,
Title VARCHAR (255),
year_of_publication VARCHAR (255)

);

CREATE TABLE Authorship (
 isbn INT,
 author_id INT,   
PRIMARY KEY (isbn, author_id),
FOREIGN KEY (author_id) REFERENCES Author (author_id),
FOREIGN KEY (isbn) REFERENCES Book (isbn)
);

CREATE TABLE Author (
author_id INT PRIMARY KEY,
FULL_name_author VARCHAR (255)
);


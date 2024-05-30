﻿BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Person (PersonID, FirstName, LastName, MiddleName, Gender) VALUES (2147483647, '1', '2', '3', 'M')

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM Person WHERE PersonID > 4

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Person MODIFY (PersonID SERIAL(5))

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Person ADD CONSTRAINT PRIMARY KEY (PersonID)

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Patient ADD CONSTRAINT(FOREIGN KEY (PersonID) REFERENCES Person (PersonID))

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Doctor ADD CONSTRAINT(FOREIGN KEY (PersonID) REFERENCES Person (PersonID))

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'U'

INSERT INTO Person
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'U'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	Person t1
SET
	FirstName = @FirstName,
	LastName = @LastName,
	MiddleName = @MiddleName,
	Gender = @Gender
WHERE
	t1.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	Person
WHERE
	Person.PersonID = @ID


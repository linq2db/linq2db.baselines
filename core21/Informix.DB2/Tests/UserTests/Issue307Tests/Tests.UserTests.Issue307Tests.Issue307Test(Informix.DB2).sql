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

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarChar(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarChar(11) -- String
SET     @LastName = 'LastName307'

INSERT INTO Person
(
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4


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

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'test',
	'subject',
	'U'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	1
FROM
	Patient t1
WHERE
	t1.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

INSERT INTO Patient
(
	PersonID,
	Diagnosis
)
VALUES
(
	@id,
	'negative'
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	1
FROM
	Patient t1
WHERE
	t1.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	Patient
WHERE
	Patient.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	Person
WHERE
	Person.PersonID = @id


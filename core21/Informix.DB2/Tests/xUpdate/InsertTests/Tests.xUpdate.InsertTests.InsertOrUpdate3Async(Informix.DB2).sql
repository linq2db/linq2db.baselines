BeforeExecute
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
-- Informix.DB2 Informix (asynchronously)

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @i Integer(4) -- Int32
SET     @i = 0
DECLARE @id Integer(4) -- Int32
SET     @id = 5

UPDATE
	Patient
SET
	Patient.Diagnosis = To_Char(Length(Patient.Diagnosis) + @i)
WHERE
	Patient.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
	'abc'
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @i Integer(4) -- Int32
SET     @i = 1
DECLARE @id Integer(4) -- Int32
SET     @id = 5

UPDATE
	Patient
SET
	Patient.Diagnosis = To_Char(Length(Patient.Diagnosis) + @i)
WHERE
	Patient.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @i Integer(4) -- Int32
SET     @i = 2
DECLARE @id Integer(4) -- Int32
SET     @id = 5

UPDATE
	Patient
SET
	Patient.Diagnosis = To_Char(Length(Patient.Diagnosis) + @i)
WHERE
	Patient.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT FIRST 2
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	Patient
WHERE
	Patient.PersonID = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	Person
WHERE
	Person.PersonID = @id


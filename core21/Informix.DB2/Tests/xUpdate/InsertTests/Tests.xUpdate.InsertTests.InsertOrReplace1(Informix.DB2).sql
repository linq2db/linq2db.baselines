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
-- Informix.DB2 Informix

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
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5

UPDATE
	Patient
SET
	Patient.Diagnosis = @Diagnosis
WHERE
	Patient.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO Patient
(
	PersonID,
	Diagnosis
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5

UPDATE
	Patient
SET
	Patient.Diagnosis = @Diagnosis
WHERE
	Patient.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5

UPDATE
	Patient
SET
	Patient.Diagnosis = @Diagnosis
WHERE
	Patient.PersonID = @PersonID

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


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

DELETE FROM
	Patient

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Doctor

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

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
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 2'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

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
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'O'

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
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
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
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

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
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 6'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

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
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 9
DECLARE @Taxonomy VarChar(10) -- String
SET     @Taxonomy = 'Dr. Lector'

INSERT INTO Doctor
(
	PersonID,
	Taxonomy
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 10
DECLARE @Taxonomy VarChar(10) -- String
SET     @Taxonomy = 'Dr. who???'

INSERT INTO Doctor
(
	PersonID,
	Taxonomy
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 7
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'sick'

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
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 8
DECLARE @Diagnosis VarChar(9) -- String
SET     @Diagnosis = 'very sick'

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


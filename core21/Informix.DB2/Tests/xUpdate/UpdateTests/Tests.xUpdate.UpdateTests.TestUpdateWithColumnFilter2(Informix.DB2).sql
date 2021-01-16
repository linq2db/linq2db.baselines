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
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
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
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'

SELECT FIRST 2
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = @FirstName

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	Person
SET
	Person.FirstName = @FirstName
WHERE
	Person.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

SELECT FIRST 2
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	Person
SET
	Person.FirstName = @FirstName,
	Person.LastName = @LastName,
	Person.MiddleName = @MiddleName,
	Person.Gender = @Gender
WHERE
	Person.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

SELECT FIRST 2
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	Person
WHERE
	Person.PersonID = @ID


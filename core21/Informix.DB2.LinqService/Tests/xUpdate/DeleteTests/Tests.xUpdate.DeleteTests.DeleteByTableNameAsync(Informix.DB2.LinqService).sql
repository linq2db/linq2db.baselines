﻿BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE xxPerson

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE xxPerson
(
	FirstName  NVarChar(255)  NOT NULL,
	PersonID   SERIAL         NOT NULL,
	LastName   NVarChar(255)  NOT NULL,
	MiddleName NVarChar(255)      NULL,
	Gender     Char(1)        NOT NULL,

	PRIMARY KEY (PersonID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO xxPerson
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
-- Informix.DB2 Informix (asynchronously)

SELECT 
	Count(*)
FROM
	xxPerson t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2 
	t1.FirstName, 
	t1.PersonID, 
	t1.LastName, 
	t1.MiddleName, 
	t1.Gender
FROM
	xxPerson t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

DELETE FROM
	xxPerson
WHERE
	xxPerson.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT 
	Count(*)
FROM
	xxPerson t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE xxPerson


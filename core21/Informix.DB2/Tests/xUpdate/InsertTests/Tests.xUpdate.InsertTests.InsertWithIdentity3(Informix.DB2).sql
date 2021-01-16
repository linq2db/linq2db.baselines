BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
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


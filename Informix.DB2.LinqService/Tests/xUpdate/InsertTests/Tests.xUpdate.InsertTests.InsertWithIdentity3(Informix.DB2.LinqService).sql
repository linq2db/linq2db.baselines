BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = 'John' AND p.LastName = 'Shepard'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Person
WHERE
	Person.PersonID > 4


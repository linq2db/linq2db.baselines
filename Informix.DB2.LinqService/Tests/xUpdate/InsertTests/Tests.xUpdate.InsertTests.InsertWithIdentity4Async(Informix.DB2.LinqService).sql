BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @FirstName VarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
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
-- Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p VarChar(5) -- String
SET     @p = 'John0'

SELECT FIRST 2
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = @p AND p.LastName = 'Shepard'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @FirstName VarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
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
-- Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p VarChar(5) -- String
SET     @p = 'John1'

SELECT FIRST 2
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = @p AND p.LastName = 'Shepard'

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4


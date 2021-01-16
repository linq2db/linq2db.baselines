BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	@FirstName,
	'LastName',
	@Gender
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 4

DELETE FROM
	Person
WHERE
	Person.PersonID > @id


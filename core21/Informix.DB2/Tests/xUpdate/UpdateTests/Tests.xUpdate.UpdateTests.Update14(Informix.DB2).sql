BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(8) -- String
SET     @FirstName = 'Update14'
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
DECLARE @name VarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Integer(4) -- Int32
SET     @idx = 4

UPDATE
	Person
SET
	Person.LastName = To_Char(Length(@name) + @idx)
WHERE
	Person.FirstName LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Update14%' ESCAPE '~'


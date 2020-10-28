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
DECLARE @idx Integer(4) -- Int32
SET     @idx = 12

UPDATE
	Person
SET
	Person.LastName = To_Char(@idx)
WHERE
	Person.FirstName LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Update14%' ESCAPE '~'


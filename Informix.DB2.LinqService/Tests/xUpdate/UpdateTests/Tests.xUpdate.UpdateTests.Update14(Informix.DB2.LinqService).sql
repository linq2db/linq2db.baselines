BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)
DECLARE @name Integer(4) -- Int32
SET     @name = 8
DECLARE @idx Integer(4) -- Int32
SET     @idx = 4

UPDATE
	Person t1
SET
	LastName = To_Char(@name::Int + @idx::Int)
WHERE
	t1.FirstName LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Update14%' ESCAPE '~'


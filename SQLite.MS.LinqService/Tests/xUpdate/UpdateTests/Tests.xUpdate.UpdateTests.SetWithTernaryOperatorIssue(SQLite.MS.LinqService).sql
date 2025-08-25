BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(5) -- String
SET     @Name_LastName = 'Empty'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @nullableGender NChar(1) -- StringFixedLength
SET     @nullableGender = 'O'

UPDATE
	[Person]
SET
	[Gender] = @nullableGender
WHERE
	[Person].[FirstName] LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5

SELECT
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id
LIMIT 1


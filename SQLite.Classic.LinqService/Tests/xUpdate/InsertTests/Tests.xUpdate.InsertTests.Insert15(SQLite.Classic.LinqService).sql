BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(8) -- String
SET     @Name_LastName = 'Insert15'

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
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert15%' ESCAPE '~'


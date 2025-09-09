BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' AND [p].[LastName] = 'Shepard'
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4


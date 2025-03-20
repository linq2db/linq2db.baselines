BeforeExecute
-- SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p_FirstName NVarChar(25) -- String
SET     @p_FirstName = 'UpdateColumnFilterUpdated'

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @p_FirstName
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p_FirstName NVarChar(25) -- String
SET     @p_FirstName = 'UpdateColumnFilterUpdated'

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @p_FirstName
LIMIT 1


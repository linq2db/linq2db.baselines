BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'

INSERT INTO [TestInsertOrReplaceTable] AS [t1]
(
	[ID],
	[FirstName],
	[LastName]
)
VALUES
(
	@ID,
	@FirstName,
	@LastName
)
ON CONFLICT ([ID]) DO UPDATE SET
	[FirstName] = @FirstName,
	[LastName] = @LastName

BeforeExecute
-- SQLite.MS SQLite
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(12) -- String
SET     @MiddleName = 'updated name'

INSERT INTO [TestInsertOrReplaceTable] AS [t1]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName]
)
VALUES
(
	@ID,
	@FirstName,
	@LastName,
	@MiddleName
)
ON CONFLICT ([ID]) DO UPDATE SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName

BeforeExecute
-- SQLite.MS SQLite
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName
LIMIT 1


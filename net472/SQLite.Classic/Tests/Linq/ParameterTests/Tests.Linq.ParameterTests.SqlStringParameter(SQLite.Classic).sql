BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(6) -- String
SET     @p = 'Tester'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p
LIMIT @take


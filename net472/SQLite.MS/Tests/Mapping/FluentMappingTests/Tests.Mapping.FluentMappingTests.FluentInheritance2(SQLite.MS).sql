BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[Gender],
	[_].[PersonID],
	[_].[FirstName]
FROM
	[Person] [_]
WHERE
	([_].[Gender] = 'M' OR [_].[Gender] = 'M') AND [_].[PersonID] = 1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[Gender],
	[_].[PersonID],
	[_].[LastName],
	[_].[FirstName]
FROM
	[Person] [_]
WHERE
	([_].[Gender] = 'F' OR [_].[Gender] = 'F') AND [_].[PersonID] = 3
LIMIT @take


BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 3
LIMIT @take


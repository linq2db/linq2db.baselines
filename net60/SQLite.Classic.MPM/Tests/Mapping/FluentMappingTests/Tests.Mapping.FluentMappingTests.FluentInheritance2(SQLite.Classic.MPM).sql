BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[Gender],
	[_].[PersonID],
	[_].[FirstName]
FROM
	[Person] [_]
WHERE
	[_].[Gender] = 'M' AND [_].[PersonID] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
	[_].[Gender] = 'F' AND [_].[PersonID] = 3
LIMIT @take


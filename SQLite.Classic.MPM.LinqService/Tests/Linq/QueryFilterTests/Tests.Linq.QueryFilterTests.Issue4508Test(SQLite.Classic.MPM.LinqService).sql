BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @idCopy  -- Int32
SET     @idCopy = 6

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > @idCopy

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @idCopy  -- Int32
SET     @idCopy = 12

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > @idCopy


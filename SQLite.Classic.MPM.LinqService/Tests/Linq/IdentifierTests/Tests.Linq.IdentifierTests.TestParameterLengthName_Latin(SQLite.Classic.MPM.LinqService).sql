BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij  -- Int32
SET     @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij = 1

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij


BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[gc1].[FirstName],
	[gc1].[PersonID],
	[gc1].[LastName],
	[gc1].[MiddleName],
	[gc1].[Gender]
FROM
	[Person] [gc1]
WHERE
	[gc1].[Gender] = 'M'


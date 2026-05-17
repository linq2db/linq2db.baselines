-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[FirstName],
	[item_1].[PersonID],
	[item_1].[LastName],
	[item_1].[MiddleName],
	[item_1].[Gender]
FROM
	[Person] [item_1]
UNION ALL
SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(
		SELECT
			[item_2].[FirstName],
			[item_2].[PersonID] as [ID],
			[item_2].[LastName],
			[item_2].[MiddleName],
			[item_2].[Gender]
		FROM
			[Person] [item_2]
		ORDER BY
			[item_2].[PersonID]
	) [t1]


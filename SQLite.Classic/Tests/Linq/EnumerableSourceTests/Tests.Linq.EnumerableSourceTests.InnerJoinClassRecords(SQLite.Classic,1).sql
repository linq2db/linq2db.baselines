BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [ID] WHERE 1 = 0
			UNION ALL
			VALUES
				(1), (2)
			) [n] ON [p].[PersonID] = [n].[ID]


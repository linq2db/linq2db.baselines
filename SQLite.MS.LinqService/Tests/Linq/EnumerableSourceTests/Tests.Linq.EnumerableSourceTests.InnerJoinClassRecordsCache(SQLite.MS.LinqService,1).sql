BeforeExecute
-- SQLite.MS SQLite (asynchronously)

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
				(2), (3)
			) [n] ON [p].[PersonID] = [n].[ID]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

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
				(4), (5)
			) [n] ON [p].[PersonID] = [n].[ID]


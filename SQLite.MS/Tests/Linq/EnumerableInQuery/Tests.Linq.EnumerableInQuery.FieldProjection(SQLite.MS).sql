BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[ID]
FROM
	[Person] [x]
		INNER JOIN (
			SELECT
				[t1].[ID],
				ROW_NUMBER() OVER (PARTITION BY [t1].[ID] ORDER BY [t1].[ID]) as [rn]
			FROM
				(
					SELECT NULL [ID] WHERE 1 = 0
					UNION ALL
					VALUES
						(1), (2), (3), (4)
					) [t1]
		) [t2] ON [t2].[ID] = [x].[PersonID] AND [t2].[rn] <= 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


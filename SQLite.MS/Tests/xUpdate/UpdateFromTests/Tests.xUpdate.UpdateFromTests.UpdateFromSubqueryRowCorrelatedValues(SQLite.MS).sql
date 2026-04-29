-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

-- SQLite.MS SQLite

UPDATE
	[UpdateSubquerySourceTable]
SET
	([FirstName], [LastName]) = (
		SELECT
			CASE
				WHEN [canChange].[Id] IS NOT NULL THEN [canChange].[FirstName]
				ELSE [UpdateSubquerySourceTable].[FirstName]
			END,
			CASE
				WHEN [canChange].[Id] IS NOT NULL THEN [canChange].[LastName]
				ELSE [UpdateSubquerySourceTable].[LastName]
			END
		FROM
			(
				SELECT
					1 as [c1]
			) [t1]
				LEFT JOIN [UpdateSubquerySourceTable] [canChange] ON [canChange].[Id] = [UpdateSubquerySourceTable].[Id] + 1
	)
WHERE
	[UpdateSubquerySourceTable].[Id] = 1

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[UpdateSubquerySourceTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4


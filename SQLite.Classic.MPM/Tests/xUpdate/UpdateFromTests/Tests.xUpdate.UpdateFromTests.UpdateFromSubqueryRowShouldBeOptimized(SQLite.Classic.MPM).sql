-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[UpdateSubquerySourceTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4


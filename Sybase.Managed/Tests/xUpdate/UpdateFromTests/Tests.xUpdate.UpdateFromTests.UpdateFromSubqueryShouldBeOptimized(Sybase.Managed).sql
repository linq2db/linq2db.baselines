-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- Sybase.Managed Sybase

UPDATE
	[UpdateSubquerySourceTable]
SET
	[FirstName] = (
		SELECT
			[canChange].[FirstName]
		FROM
			[UpdateSubquerySourceTable] [canChange]
		WHERE
			[canChange].[Id] = [UpdateSubquerySourceTable].[Id] + 1
	),
	[LastName] = (
		SELECT
			[canChange_1].[LastName]
		FROM
			[UpdateSubquerySourceTable] [canChange_1]
		WHERE
			[canChange_1].[Id] = [UpdateSubquerySourceTable].[Id] + 1
	)
WHERE
	[UpdateSubquerySourceTable].[Id] = 1

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[UpdateSubquerySourceTable] [t1]
ORDER BY
	[t1].[Id]

-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4


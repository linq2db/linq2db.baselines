-- SqlCe
SELECT
	[r].[Id],
	[r].[Value],
	[r].[Name]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 1 AS [Id], NULL AS [Value], 'a' AS [Name]
			UNION ALL
			SELECT 2 AS [Id], 2 AS [Value], NULL AS [Name]) [r] ON [p].[PersonID] = [r].[Id]
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


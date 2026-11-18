-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id],
	[r].[Value],
	[r].[Name]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 1 AS [Id], CAST(NULL AS Int) AS [Value], N'a' AS [Name]
			UNION ALL
			SELECT 2, 2, NULL) [r] ON [p].[PersonID] = [r].[Id]
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


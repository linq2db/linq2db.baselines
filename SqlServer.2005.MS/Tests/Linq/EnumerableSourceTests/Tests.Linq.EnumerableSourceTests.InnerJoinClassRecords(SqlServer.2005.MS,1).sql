-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT N'Janet' AS [FirstName], 1 AS [ID], CAST(NULL AS NVarChar(4000)) AS [LastName], CAST(NULL AS NVarChar(4000)) AS [MiddleName], 'M' AS [Gender]
			UNION ALL
			SELECT N'Doe', 2, NULL, NULL, 'M') [n] ON [p].[PersonID] = [n].[ID]


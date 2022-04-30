BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(
		SELECT N'Janet' AS [FirstName], 2 AS [PersonID], NULL AS [LastName], NULL AS [MiddleName], 'M' AS [Gender]
		UNION ALL
		SELECT N'Doe', 3, NULL, NULL, 'M') [t1]


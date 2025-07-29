BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(
		SELECT N'Janet' AS [FirstName], 2 AS [ID], CAST(NULL AS NVarChar(4000)) AS [LastName], CAST(NULL AS NVarChar(4000)) AS [MiddleName], 'M' AS [Gender]
		UNION ALL
		SELECT N'Doe', 3, NULL, NULL, 'M') [t1]


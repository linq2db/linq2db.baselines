-- SqlServer.2005

SELECT
	[x].[FirstName],
	[x].[ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	(
		SELECT 1 AS [Patient_PersonID], N'Janet' AS [FirstName], 3 AS [ID], CAST(NULL AS NVarChar(4000)) AS [LastName], CAST(NULL AS NVarChar(4000)) AS [MiddleName], 'M' AS [Gender]
		UNION ALL
		SELECT NULL, N'Doe', 4, NULL, NULL, 'M') [x]
WHERE
	[x].[Patient_PersonID] = 1


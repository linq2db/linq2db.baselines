BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[x].[FirstName],
	[x].[ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	(
		SELECT 1 AS [Patient_PersonID], N'Janet' AS [FirstName], 2 AS [ID], CAST(NULL AS NVarChar(4000)) AS [LastName], CAST(NULL AS NVarChar(4000)) AS [MiddleName], 'M' AS [Gender]
		UNION ALL
		SELECT NULL, N'Doe', 3, NULL, NULL, 'M') [x]
WHERE
	[x].[Patient_PersonID] = 1


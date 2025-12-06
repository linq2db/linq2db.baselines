-- SqlCe

SELECT
	[x].[FirstName],
	[x].[ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	(
		SELECT 1 AS [Patient_PersonID], 'Janet' AS [FirstName], 3 AS [ID], NULL AS [LastName], NULL AS [MiddleName], 'M' AS [Gender]
		UNION ALL
		SELECT NULL AS [Patient_PersonID], 'Doe' AS [FirstName], 4 AS [ID], NULL AS [LastName], NULL AS [MiddleName], 'M' AS [Gender]) [x]
WHERE
	[x].[Patient_PersonID] = 1


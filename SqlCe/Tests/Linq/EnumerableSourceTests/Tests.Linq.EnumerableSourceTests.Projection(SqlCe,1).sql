BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(
		SELECT 'Janet' AS [FirstName], 2 AS [PersonID], NULL AS [LastName], NULL AS [MiddleName], 'M' AS [Gender]
		UNION ALL
		SELECT 'Doe' AS [FirstName], 3 AS [PersonID], NULL AS [LastName], NULL AS [MiddleName], 'M' AS [Gender]) [t1]


BeforeExecute
-- SqlCe

SELECT
	[x].[PersonID] as [ID],
	[y].[value__]
FROM
	[Person] [x]
		CROSS JOIN (
			SELECT 0 AS [value__]
			UNION ALL
			SELECT 1 AS [value__]
			UNION ALL
			SELECT 2 AS [value__]
			UNION ALL
			SELECT 3 AS [value__]) [y]

BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


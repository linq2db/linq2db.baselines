-- SqlCe

SELECT
	[y].[item] as [item_1]
FROM
	[Person] [x]
		CROSS JOIN (
			SELECT 'M' AS [item]
			UNION ALL
			SELECT 'F' AS [item]
			UNION ALL
			SELECT 'U' AS [item]
			UNION ALL
			SELECT 'O' AS [item]) [y]

-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


-- SqlCe

SELECT
	[x].[PersonID] + [y].[item] as [c1]
FROM
	[Person] [x]
		CROSS JOIN (
			SELECT 1 AS [item]
			UNION ALL
			SELECT 3 AS [item]) [y]

-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


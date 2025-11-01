-- SqlCe

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName] + '/' + [p_1].[LastName] as [FirstName]
FROM
	[Person] [p_1]

-- SqlCe

SELECT
	[p].[FirstName] + '/' + [p].[LastName] as [FirstName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[FirstName]
FROM
	[Person] [p_1]


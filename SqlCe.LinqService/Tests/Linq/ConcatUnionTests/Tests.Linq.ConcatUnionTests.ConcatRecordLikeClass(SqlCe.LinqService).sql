BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[PersonID] as [Id],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[PersonID] as [Id],
	[p_1].[FirstName],
	[p_1].[LastName]
FROM
	[Person] [p_1]


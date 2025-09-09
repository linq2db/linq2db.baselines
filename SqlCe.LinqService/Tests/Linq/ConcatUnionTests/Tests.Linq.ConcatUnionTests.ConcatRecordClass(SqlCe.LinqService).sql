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

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


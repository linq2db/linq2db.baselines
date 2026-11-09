-- SqlServer.2005
SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[PersonID],
	[p_1].[Gender]
FROM
	[Person] [p_1]

-- SqlServer.2005
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


-- SqlServer.2014.MS SqlServer.2014
SELECT
	[p].[PersonID],
	[c_1].[PersonID]
FROM
	[Person] [p],
	[Person] [c_1]
WHERE
	[p].[Gender] = [c_1].[Gender]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]


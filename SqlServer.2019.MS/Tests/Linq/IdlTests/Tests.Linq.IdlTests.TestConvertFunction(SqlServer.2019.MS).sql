-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[PersonID]
FROM
	[Patient] [x]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[PersonID],
	[x].[FirstName]
FROM
	[Person] [x]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[PersonID],
	[person_1].[PersonID],
	[person_1].[FirstName]
FROM
	[Patient] [x]
		INNER JOIN [Person] [person_1] ON [x].[PersonID] = [person_1].[PersonID]


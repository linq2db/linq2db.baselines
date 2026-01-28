-- SqlServer.2005.MS SqlServer.2005

SELECT
	[serv].[PersonID]
FROM
	[Patient] [serv]
		INNER JOIN [Person] [a_Person] ON [serv].[PersonID] = [a_Person].[PersonID]
WHERE
	[a_Person].[PersonID] = 1


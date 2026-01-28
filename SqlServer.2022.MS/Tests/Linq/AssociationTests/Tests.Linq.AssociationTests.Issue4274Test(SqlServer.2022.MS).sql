-- SqlServer.2022.MS SqlServer.2022

SELECT
	[serv].[PersonID]
FROM
	[Patient] [serv]
		INNER JOIN [Person] [a_Person] ON [serv].[PersonID] = [a_Person].[PersonID]
WHERE
	[a_Person].[PersonID] = 1


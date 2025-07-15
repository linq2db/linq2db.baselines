BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[serv].[PersonID]
FROM
	(
		SELECT
			[gr].[PersonID]
		FROM
			[Patient] [gr]
		GROUP BY
			[gr].[PersonID]
	) [serv]
		INNER JOIN [Person] [a_Person] ON [serv].[PersonID] = [a_Person].[PersonID]
WHERE
	[a_Person].[PersonID] = 1


BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[Id],
	(
		SELECT TOP (1)
			[a_PetIds].[Name]
		FROM
			[Issue2933Pet] [a_PetIds]
		WHERE
			[a_Person].[Id] IS NOT NULL AND [a_Person].[Id] = [a_PetIds].[PersonId]
	)
FROM
	[Issue2933Car] [x]
		LEFT JOIN [Issue2933Person] [a_Person] ON [x].[PersonId] = [a_Person].[Id]


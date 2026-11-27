-- SqlServer.2014.MS SqlServer.2014
SELECT
	[x].[Id],
	(
		SELECT TOP (1)
			[a_PetIds].[Name]
		FROM
			[OneToManyPet] [a_PetIds]
		WHERE
			[a_Person].[Id] = [a_PetIds].[PersonId]
	)
FROM
	[OneToManyCar] [x]
		LEFT JOIN [OneToManyPerson] [a_Person] ON [x].[PersonId] = [a_Person].[Id]


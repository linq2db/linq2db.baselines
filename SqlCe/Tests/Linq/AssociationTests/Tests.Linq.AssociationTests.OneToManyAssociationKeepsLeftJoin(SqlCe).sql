-- SqlCe
SELECT
	[x].[Id],
	[t1].[PetName]
FROM
	[OneToManyCar] [x]
		LEFT JOIN [OneToManyPerson] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		OUTER APPLY (
			SELECT TOP (1)
				[a_PetIds].[Name] as [PetName]
			FROM
				[OneToManyPet] [a_PetIds]
			WHERE
				[a_Person].[Id] = [a_PetIds].[PersonId]
		) [t1]


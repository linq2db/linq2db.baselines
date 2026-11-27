-- YDB Ydb
SELECT
	x.Id as Id,
	t2.PetName as PetName
FROM
	OneToManyCar x
		LEFT JOIN OneToManyPerson a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN (
			SELECT
				t1.PetName as PetName,
				t1.PersonId as PersonId
			FROM
				(
					SELECT
						a_PetIds.Name as PetName,
						ROW_NUMBER() OVER (PARTITION BY a_PetIds.PersonId ORDER BY a_PetIds.PersonId) as rn,
						a_PetIds.PersonId as PersonId
					FROM
						OneToManyPet a_PetIds
				) t1
			WHERE
				t1.rn = 1
		) t2 ON a_Person.Id = t2.PersonId


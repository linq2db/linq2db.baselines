-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	t1.PetName
FROM
	Issue2933Car x
		LEFT JOIN Issue2933Person a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN (
			SELECT
				a_PetIds.Name as PetName,
				ROW_NUMBER() OVER (PARTITION BY a_PetIds.PersonId ORDER BY a_PetIds.PersonId) as rn,
				a_PetIds.PersonId as PersonId
			FROM
				Issue2933Pet a_PetIds
		) t1 ON a_Person.Id = t1.PersonId AND t1.rn <= 1


BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	entity1.FirstName,
	entity1.PersonID,
	entity1.LastName,
	entity1.MiddleName,
	entity1.Gender,
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person entity1
		LEFT JOIN (
			SELECT
				entity2.FirstName as FirstName,
				entity2.PersonID as ID,
				entity2.LastName as LastName,
				entity2.MiddleName as MiddleName,
				entity2.Gender as Gender,
				ROW_NUMBER() OVER (PARTITION BY entity2.PersonID ORDER BY entity2.PersonID) as rn
			FROM
				Person entity2
		) t1 ON t1.ID = entity1.PersonID AND t1.rn <= 1
LIMIT 1


-- YDB Ydb

SELECT
	entity1.FirstName as FirstName,
	entity1.PersonID as ID,
	entity1.LastName as LastName,
	entity1.MiddleName as MiddleName,
	entity1.Gender as Gender,
	t2.FirstName as FirstName_1,
	t2.ID as ID_1,
	t2.LastName as LastName_1,
	t2.MiddleName as MiddleName_1,
	t2.Gender as Gender_1
FROM
	Person entity1
		LEFT JOIN (
			SELECT
				t1.FirstName as FirstName,
				t1.ID as ID,
				t1.LastName as LastName,
				t1.MiddleName as MiddleName,
				t1.Gender as Gender
			FROM
				(
					SELECT
						entity2.FirstName as FirstName,
						entity2.PersonID as ID,
						entity2.LastName as LastName,
						entity2.MiddleName as MiddleName,
						entity2.Gender as Gender,
						ROW_NUMBER() OVER (PARTITION BY entity2.PersonID ORDER BY entity2.PersonID) as rn
					FROM
						Person entity2
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.ID = entity1.PersonID
LIMIT 1


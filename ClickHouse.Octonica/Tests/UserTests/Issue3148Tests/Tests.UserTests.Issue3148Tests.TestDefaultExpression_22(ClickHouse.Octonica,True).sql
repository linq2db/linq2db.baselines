BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.is_empty
FROM
	Person person_1
		LEFT JOIN (
			SELECT
				NULL as r,
				toInt32(1) as is_empty
			FROM
				Doctor d
		) t1 ON person_1.PersonID = toInt32(0) AND person_1.FirstName IS NULL AND person_1.LastName = t1.r AND person_1.Gender IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.is_empty
FROM
	Person person_1
		LEFT JOIN (
			SELECT
				NULL as r,
				toInt32(1) as is_empty
			FROM
				Doctor d
		) t1 ON person_1.PersonID = toInt32(0) AND person_1.FirstName IS NULL AND person_1.LastName = t1.r AND person_1.Gender IS NULL


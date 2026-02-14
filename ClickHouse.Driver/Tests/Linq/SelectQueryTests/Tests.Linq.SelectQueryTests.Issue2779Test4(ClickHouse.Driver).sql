-- ClickHouse.Driver ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID IN (
		SELECT
			t1.value as value_1
		FROM
			(
				SELECT 1 as value
			) t1
	)


-- ClickHouse.MySql ClickHouse

SELECT
	x.PersonID,
	x.Diagnosis
FROM
	Patient x
		INNER JOIN Person y ON x.PersonID = y.PersonID
WHERE
	y.Gender = 'O'


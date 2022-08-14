BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.PersonID,
	x.Diagnosis
FROM
	Patient x
		INNER JOIN Person x1 ON x.PersonID = x1.PersonID
WHERE
	x1.Gender = 'O'


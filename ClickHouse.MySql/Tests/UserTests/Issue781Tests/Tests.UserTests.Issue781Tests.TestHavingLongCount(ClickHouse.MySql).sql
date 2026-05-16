-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			concat('test', Coalesce(a_Patient.Diagnosis, '')) as c1
		FROM
			Person t1
				LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
	) t2


BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			toInt32(0) as c1
		FROM
			Person selectParam
				LEFT JOIN Patient a_Patient ON selectParam.PersonID = a_Patient.PersonID
		GROUP BY
			concat('test', a_Patient.Diagnosis)
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			toInt32(0) as c1
		FROM
			Person selectParam
				LEFT JOIN Patient a_Patient ON selectParam.PersonID = a_Patient.PersonID
		GROUP BY
			concat('test', a_Patient.Diagnosis)
	) t1


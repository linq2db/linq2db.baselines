BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			toInt32(0) as c1
		FROM
			(
				SELECT
					concat('test', a_Patient.Diagnosis) as Key_1
				FROM
					Person selectParam
						LEFT JOIN Patient a_Patient ON selectParam.PersonID = a_Patient.PersonID
			) t1
		GROUP BY
			t1.Key_1
		HAVING
			t1.Key_1 IS NOT NULL
	) t2


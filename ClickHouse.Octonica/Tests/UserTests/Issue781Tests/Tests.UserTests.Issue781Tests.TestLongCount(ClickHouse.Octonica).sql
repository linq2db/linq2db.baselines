﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t2.c1 as c1
		FROM
			(
				SELECT
					concat('test', a_Patient.Diagnosis) as c1
				FROM
					Person t1
						LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
			) t2
		GROUP BY
			t2.c1
	) t3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t2.c1 as c1
		FROM
			(
				SELECT
					concat('test', a_Patient.Diagnosis) as c1
				FROM
					Person t1
						LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
			) t2
		GROUP BY
			t2.c1
	) t3


﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
		LEFT JOIN Patient a_Patient ON x.PersonID = a_Patient.PersonID
WHERE
	a_Patient.Diagnosis = 'Hallucination with Paranoid Bugs\' Delirium of Persecution' AND
	a_Patient.Diagnosis IS NOT NULL


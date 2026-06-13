-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT DISTINCT
			'test'u || Coalesce(a_Patient.Diagnosis, ''u) as Key_1
		FROM
			Person t1
				LEFT JOIN Patient a_Patient ON t1.PersonID = a_Patient.PersonID
	) t2


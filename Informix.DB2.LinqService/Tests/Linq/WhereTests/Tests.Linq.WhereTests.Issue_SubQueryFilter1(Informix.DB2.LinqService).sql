BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.PersonID,
	t1.Diagnosis
FROM
	Patient t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person e,
			(
				SELECT FIRST 1
					d.PersonID as cond
				FROM
					Patient d
			) t2
		WHERE
			e.FirstName LIKE '%John%' ESCAPE '~' AND e.PersonID = t2.cond
	) OR
	EXISTS(
		SELECT
			*
		FROM
			Person e_1,
			(
				SELECT FIRST 1
					d_1.PersonID as cond
				FROM
					Patient d_1
			) t3
		WHERE
			e_1.FirstName LIKE '%Tester%' ESCAPE '~' AND e_1.PersonID = t3.cond
	)
ORDER BY
	t1.PersonID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.PersonID,
	t1.Diagnosis
FROM
	Patient t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1


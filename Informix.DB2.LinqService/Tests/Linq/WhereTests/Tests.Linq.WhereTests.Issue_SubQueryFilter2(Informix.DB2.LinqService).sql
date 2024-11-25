BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	EXISTS(
		SELECT
			1
		FROM
			Person e,
			(
				SELECT FIRST 1
					d.PersonID
				FROM
					Patient d
			) t1
		WHERE
			e.PersonID = p.PersonID AND e.FirstName LIKE '%John%' ESCAPE '~' AND
			e.PersonID = t1.PersonID
	) OR
	EXISTS(
		SELECT
			1
		FROM
			Person e_1,
			(
				SELECT FIRST 1
					d_1.PersonID
				FROM
					Patient d_1
			) t2
		WHERE
			e_1.PersonID = p.PersonID AND e_1.FirstName LIKE '%Tester%' ESCAPE '~' AND
			e_1.PersonID = t2.PersonID
	)
ORDER BY
	p.PersonID

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


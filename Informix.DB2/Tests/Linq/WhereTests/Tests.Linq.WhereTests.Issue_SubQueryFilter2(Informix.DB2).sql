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
			*
		FROM
			Person e
				CROSS JOIN (
					SELECT FIRST 1
						d.PersonID as cond
					FROM
						Patient d
				) t1
		WHERE
			e.PersonID = p.PersonID AND e.FirstName LIKE '%John%' ESCAPE '~' AND
			e.PersonID = t1.cond
	) OR
	EXISTS(
		SELECT
			*
		FROM
			Person e_1
				CROSS JOIN (
					SELECT FIRST 1
						d_1.PersonID as cond
					FROM
						Patient d_1
				) t2
		WHERE
			e_1.PersonID = p.PersonID AND e_1.FirstName LIKE '%Tester%' ESCAPE '~' AND
			e_1.PersonID = t2.cond
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


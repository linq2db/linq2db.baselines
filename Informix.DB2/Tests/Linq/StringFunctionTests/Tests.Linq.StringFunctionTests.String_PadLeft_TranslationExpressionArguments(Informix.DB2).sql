BeforeExecute
-- Informix.DB2 Informix

SELECT
	s.ID,
	s.FirstName
FROM
	(
		SELECT
			CASE
				WHEN CHAR_LENGTH(p.FirstName || '.') - 1 >= p.PersonID THEN p.FirstName
				ELSE LPAD(p.FirstName, p.PersonID, '.')
			END as FirstName,
			p.PersonID as ID
		FROM
			Person p
	) s
WHERE
	s.FirstName <> ''

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


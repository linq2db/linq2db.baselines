BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN (
			SELECT 'Doe'::NVarChar(255) AS "item" FROM table(set{1})) n ON p.LastName = n."item"


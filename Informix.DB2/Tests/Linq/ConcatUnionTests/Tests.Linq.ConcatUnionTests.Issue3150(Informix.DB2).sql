-- Informix.DB2 Informix

SELECT
	p.PersonID,
	p.FirstName,
	'id=1'::NVarChar(255)
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID,
	p_1.FirstName,
	'id=2'::NVarChar(255)
FROM
	Person p_1
WHERE
	p_1.PersonID = 2


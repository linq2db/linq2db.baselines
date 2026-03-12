-- Informix.DB2 Informix

SELECT
	'I-' || To_Char(x.PersonID),
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	NULL::NVarChar(255),
	'QUASI-' || x_1.FirstName
FROM
	Person x_1


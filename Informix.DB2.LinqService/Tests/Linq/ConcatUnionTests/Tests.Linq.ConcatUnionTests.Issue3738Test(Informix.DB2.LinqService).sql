BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	'I-' || x.PersonID,
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	NULL::NVarChar(255),
	'QUASI-' || x_1.FirstName
FROM
	Person x_1


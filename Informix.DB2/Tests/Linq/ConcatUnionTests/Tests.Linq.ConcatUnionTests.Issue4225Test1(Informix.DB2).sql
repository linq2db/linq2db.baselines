-- Informix.DB2 Informix

SELECT
	NVL(x.FirstName, NULL),
	NVL(x.PersonID, NULL),
	NVL(x.LastName, NULL),
	x.MiddleName,
	NVL(x.Gender, NULL),
	NULL::Int,
	NULL::NVarChar(255)
FROM
	Person x
UNION ALL
SELECT
	NULL::NVarChar(255),
	NULL::Int,
	NULL::NVarChar(255),
	NULL::NVarChar(255),
	NULL::Char(1),
	x_1.PersonID,
	x_1.Diagnosis
FROM
	Patient x_1


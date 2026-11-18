-- Informix.DB2 Informix
SELECT
	'c_'::NVarChar(255),
	NVL(p.PersonID, NULL),
	'X'::NVarChar(255),
	NVL(p.FirstName, NULL),
	NVL(p.LastName, NULL),
	NULL::NVarChar(255),
	NULL::Int,
	NULL::NVarChar(255),
	NULL::NVarChar(255)
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	NULL::NVarChar(255),
	NULL::Int,
	NULL::NVarChar(255),
	NULL::NVarChar(255),
	NULL::NVarChar(255),
	'p_'::NVarChar(255),
	p_1.PersonID,
	'X'::NVarChar(255),
	p_1.FirstName
FROM
	Person p_1
WHERE
	p_1.PersonID <= 2

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1


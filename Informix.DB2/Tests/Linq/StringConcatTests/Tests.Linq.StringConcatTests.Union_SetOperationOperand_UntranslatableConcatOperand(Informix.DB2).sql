-- Informix.DB2 Informix
SELECT
	'p_'::NVarChar(255),
	e.Id,
	'N'::NVarChar(255),
	e.Name
FROM
	ConcatSetOpEntity e
WHERE
	e.Name IS NOT NULL
UNION
SELECT
	'p_'::NVarChar(255),
	e_1.Id,
	'N'::NVarChar(255),
	e_1.Name
FROM
	ConcatSetOpEntity e_1
WHERE
	e_1.ParentId IS NULL

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.ParentId,
	t1.Name
FROM
	ConcatSetOpEntity t1


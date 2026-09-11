-- Informix.DB2 Informix
SELECT
	'p_'::NVarChar(255),
	NVL(e.Id, NULL),
	'N'::NVarChar(255),
	NULL::VARCHAR(36),
	NULL::NVarChar(255),
	e.Name,
	NULL::NVarChar(255),
	NULL::NVarChar(255),
	NULL::VARCHAR(36),
	NULL::NVarChar(255)
FROM
	ConcatSetOpEntity e
WHERE
	e.ParentId IS NULL
UNION ALL
SELECT
	NULL::NVarChar(255),
	NULL::VARCHAR(36),
	NULL::NVarChar(255),
	e_1.Id,
	'N'::NVarChar(255),
	e_1.Name,
	NULL::NVarChar(255),
	'p_'::NVarChar(255),
	e_1.ParentId,
	'N'::NVarChar(255)
FROM
	ConcatSetOpEntity e_1
WHERE
	e_1.ParentId IS NOT NULL

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.ParentId,
	t1.Name
FROM
	ConcatSetOpEntity t1


-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CAST('p_' AS VarChar(255)),
	e."Id",
	CAST('N' AS VarChar(255)),
	NULL,
	NULL,
	e."Name",
	NULL,
	NULL,
	NULL,
	NULL
FROM
	"ConcatSetOpEntity" e
WHERE
	e."ParentId" IS NULL
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	e_1."Id",
	CAST('N' AS VarChar(255)),
	e_1."Name",
	NULL,
	CAST('p_' AS VarChar(255)),
	e_1."ParentId",
	CAST('N' AS VarChar(255))
FROM
	"ConcatSetOpEntity" e_1
WHERE
	e_1."ParentId" IS NOT NULL

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."ParentId",
	t1."Name"
FROM
	"ConcatSetOpEntity" t1


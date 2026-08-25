-- Oracle.11.Managed Oracle11
SELECT
	CAST('p_' AS VarChar(255)),
	e."Id",
	CAST('N' AS VarChar(255)),
	e."Name"
FROM
	"ConcatSetOpEntity" e
WHERE
	e."ParentId" IS NULL
UNION
SELECT
	CAST('c_' AS VarChar(255)),
	e_1."Id",
	CAST('N' AS VarChar(255)),
	e_1."Name"
FROM
	"ConcatSetOpEntity" e_1
WHERE
	e_1."ParentId" IS NOT NULL

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."ParentId",
	t1."Name"
FROM
	"ConcatSetOpEntity" t1


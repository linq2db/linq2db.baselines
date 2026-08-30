-- PostgreSQL.11 PostgreSQL
SELECT
	'p_'::text,
	e."Id",
	'N'::text,
	e."Name"
FROM
	"ConcatSetOpEntity" e
WHERE
	e."ParentId" IS NULL
UNION ALL
SELECT
	'c_'::text,
	e_1."Id",
	'N'::text,
	e_1."Name"
FROM
	"ConcatSetOpEntity" e_1
WHERE
	e_1."ParentId" IS NOT NULL

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."ParentId",
	t1."Name"
FROM
	"ConcatSetOpEntity" t1


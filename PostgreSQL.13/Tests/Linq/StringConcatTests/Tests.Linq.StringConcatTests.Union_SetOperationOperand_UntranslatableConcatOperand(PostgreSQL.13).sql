-- PostgreSQL.13 PostgreSQL12
SELECT
	'p_'::text,
	e."Id",
	'N'::text,
	e."Name"
FROM
	"ConcatSetOpEntity" e
WHERE
	e."Name" IS NOT NULL
UNION
SELECT
	'p_'::text,
	e_1."Id",
	'N'::text,
	e_1."Name"
FROM
	"ConcatSetOpEntity" e_1
WHERE
	e_1."ParentId" IS NULL

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."ParentId",
	t1."Name"
FROM
	"ConcatSetOpEntity" t1


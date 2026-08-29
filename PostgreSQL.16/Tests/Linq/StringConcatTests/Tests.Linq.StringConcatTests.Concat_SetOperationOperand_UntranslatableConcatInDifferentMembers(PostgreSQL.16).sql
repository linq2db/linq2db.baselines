-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	'p_'::text,
	e."Id",
	'N'::text,
	NULL::uuid,
	NULL::text,
	e."Name",
	NULL::text,
	NULL::text,
	NULL::uuid,
	NULL::text
FROM
	"ConcatSetOpEntity" e
WHERE
	e."ParentId" IS NULL
UNION ALL
SELECT
	NULL::text,
	NULL::uuid,
	NULL::text,
	e_1."Id",
	'N'::text,
	e_1."Name",
	NULL::text,
	'p_'::text,
	e_1."ParentId",
	'N'::text
FROM
	"ConcatSetOpEntity" e_1
WHERE
	e_1."ParentId" IS NOT NULL

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."ParentId",
	t1."Name"
FROM
	"ConcatSetOpEntity" t1


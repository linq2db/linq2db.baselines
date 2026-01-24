-- PostgreSQL.13 PostgreSQL

SELECT
	i."Id"
FROM
	"Tender" i

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Tender" t1

-- PostgreSQL.13 PostgreSQL

SELECT
	r."Id"
FROM
	"Tender" r
WHERE
	r."Id" = '00000000-0000-0000-0000-000000000000'::uuid
LIMIT 1

-- PostgreSQL.13 PostgreSQL

SELECT
	i."Id"
FROM
	"Tender" i
LIMIT 1


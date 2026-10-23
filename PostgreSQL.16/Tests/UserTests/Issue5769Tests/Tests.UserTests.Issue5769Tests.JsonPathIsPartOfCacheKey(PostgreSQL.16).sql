-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Value"
FROM
	"JsonData" r
WHERE
	(r."Value"::json->'sub'->>'name') = 'findme'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"JsonData" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Value"
FROM
	"JsonData" r
WHERE
	(r."Value"::json->'sub'->>'name2') = 'findme'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"JsonData" t1


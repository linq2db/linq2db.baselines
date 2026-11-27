-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Value"
FROM
	"CacheKeyJsonRow" r
WHERE
	(r."Value"::json->'sub'->>'name') = 'findme'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheKeyJsonRow" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Value"
FROM
	"CacheKeyJsonRow" r
WHERE
	(r."Value"::json->'sub'->>'name2') = 'findme'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheKeyJsonRow" t1


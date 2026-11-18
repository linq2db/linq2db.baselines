-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	NULL::Boolean
FROM
	"NullableFlagTable" r

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."Flag"
FROM
	"NullableFlagTable" t1


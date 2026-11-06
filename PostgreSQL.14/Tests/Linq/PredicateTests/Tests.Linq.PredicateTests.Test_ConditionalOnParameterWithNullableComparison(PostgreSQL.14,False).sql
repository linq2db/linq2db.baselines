-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	NULL::Boolean
FROM
	"NullableFlagTable" r

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."Flag"
FROM
	"NullableFlagTable" t1


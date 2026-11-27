-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Value1"
FROM
	"NullableLeftJoinTable" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	l."Value1"
FROM
	"NullableLeftJoinTable" p
		LEFT JOIN "NullableLeftJoinTable" l ON l."Id" = p."Id" + 1


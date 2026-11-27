-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Value1"
FROM
	"NullableLeftJoinTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	l."Value1"
FROM
	"NullableLeftJoinTable" p
		LEFT JOIN "NullableLeftJoinTable" l ON l."Id" = p."Id" + 1


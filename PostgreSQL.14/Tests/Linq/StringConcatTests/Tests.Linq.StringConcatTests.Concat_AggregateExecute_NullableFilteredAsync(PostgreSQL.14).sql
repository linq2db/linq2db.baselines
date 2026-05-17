-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	STRING_AGG(t1."Value", '' ORDER BY t1."PK")
FROM
	"ConcatGroupedEntity" t1


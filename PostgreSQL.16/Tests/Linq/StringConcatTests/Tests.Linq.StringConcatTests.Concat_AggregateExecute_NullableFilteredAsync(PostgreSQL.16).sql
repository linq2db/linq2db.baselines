-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG(t1."Value", '' ORDER BY t1."PK")
FROM
	"ConcatGroupedEntity" t1


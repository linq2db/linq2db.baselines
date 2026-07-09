-- PostgreSQL.18 PostgreSQL13

SELECT
	STRING_AGG(t1."Value", '' ORDER BY t1."PK")
FROM
	"ConcatGroupedEntity" t1


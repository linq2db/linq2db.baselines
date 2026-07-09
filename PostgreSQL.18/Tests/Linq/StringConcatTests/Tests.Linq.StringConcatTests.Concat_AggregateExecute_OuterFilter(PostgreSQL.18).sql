-- PostgreSQL.18 PostgreSQL12

SELECT
	STRING_AGG(t1."Value", '' ORDER BY t1."PK")
FROM
	"ConcatGroupedEntity" t1


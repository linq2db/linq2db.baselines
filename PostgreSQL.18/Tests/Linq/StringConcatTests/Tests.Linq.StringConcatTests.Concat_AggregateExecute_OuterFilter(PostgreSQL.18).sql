-- PostgreSQL.18 PostgreSQL

SELECT
	Coalesce(STRING_AGG(t1."Value", '' ORDER BY t1."PK"), '')
FROM
	"ConcatGroupedEntity" t1


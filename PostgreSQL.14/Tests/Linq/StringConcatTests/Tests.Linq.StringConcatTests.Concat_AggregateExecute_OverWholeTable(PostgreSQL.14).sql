-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	STRING_AGG(Coalesce(t1."Value", ''), '' ORDER BY t1."PK" NULLS FIRST)
FROM
	"ConcatGroupedEntity" t1


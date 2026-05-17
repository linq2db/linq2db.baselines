-- PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG(Coalesce(t1."Value", ''), '' ORDER BY t1."PK" NULLS FIRST)
FROM
	"ConcatGroupedEntity" t1


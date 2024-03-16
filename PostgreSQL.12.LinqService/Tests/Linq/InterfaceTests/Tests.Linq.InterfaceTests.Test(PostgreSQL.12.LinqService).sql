BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" gr
GROUP BY
	gr."ParentID"


BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" gr
GROUP BY
	gr."ParentID"


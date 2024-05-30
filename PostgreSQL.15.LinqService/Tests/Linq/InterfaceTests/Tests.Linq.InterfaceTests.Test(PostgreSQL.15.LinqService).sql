BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" gr
GROUP BY
	gr."ParentID"


BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" gr
GROUP BY
	gr."ParentID"


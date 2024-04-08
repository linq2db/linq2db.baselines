BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" gr
GROUP BY
	gr."ParentID"


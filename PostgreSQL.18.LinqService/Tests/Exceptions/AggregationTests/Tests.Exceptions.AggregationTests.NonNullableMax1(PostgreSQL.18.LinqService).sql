BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	MAX(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0


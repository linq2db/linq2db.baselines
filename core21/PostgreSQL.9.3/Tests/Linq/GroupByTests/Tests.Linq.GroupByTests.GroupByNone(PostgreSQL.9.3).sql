BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Min(t1."ParentID"),
	Max(t1."ParentID")
FROM
	"Parent" t1


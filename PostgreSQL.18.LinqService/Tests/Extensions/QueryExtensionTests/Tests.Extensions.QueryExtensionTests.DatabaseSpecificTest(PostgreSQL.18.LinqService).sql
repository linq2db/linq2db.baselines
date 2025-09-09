BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
FOR SHARE OF t


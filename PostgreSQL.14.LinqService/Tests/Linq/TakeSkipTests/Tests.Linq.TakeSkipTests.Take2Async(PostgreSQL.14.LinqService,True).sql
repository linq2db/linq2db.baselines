BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
LIMIT :n


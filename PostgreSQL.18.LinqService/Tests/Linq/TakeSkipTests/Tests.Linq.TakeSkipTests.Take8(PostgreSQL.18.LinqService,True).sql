BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
LIMIT :n


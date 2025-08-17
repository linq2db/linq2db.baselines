BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	r."ParentID",
	r."Value1"
FROM
	"Parent" r
WHERE
	r."ParentID" = :p

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


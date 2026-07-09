-- PostgreSQL.19 PostgreSQL12
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce(p."Value1", p."ParentID" + :ParentID),
	:Value1
FROM
	"Parent" p

-- PostgreSQL.19 PostgreSQL12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


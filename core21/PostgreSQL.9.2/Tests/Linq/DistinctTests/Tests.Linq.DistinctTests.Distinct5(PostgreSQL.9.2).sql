BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", p."ParentID" % 2),
	:Value1
FROM
	"Parent" p


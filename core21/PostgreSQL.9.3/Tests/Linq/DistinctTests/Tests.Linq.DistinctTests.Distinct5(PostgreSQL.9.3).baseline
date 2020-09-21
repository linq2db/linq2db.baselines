BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Value1_1 Integer -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", p."ParentID" % 2),
	:Value1_1
FROM
	"Parent" p


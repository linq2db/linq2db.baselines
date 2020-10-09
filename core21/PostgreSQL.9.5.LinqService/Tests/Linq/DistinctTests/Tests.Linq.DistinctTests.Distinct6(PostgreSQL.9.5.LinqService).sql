BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 0
DECLARE @Value1_1 Integer -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", p."ParentID" + :ParentID_1),
	:Value1_1
FROM
	"Parent" p


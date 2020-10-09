BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 0
DECLARE @Value1_1 Integer -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT 
	Coalesce(p."Value1", p."ParentID" + :p1), 
	:Value1_1
FROM
	"Parent" p


BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t."ParentID", 
	t."Value1"
FROM
	"Parent" t

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 1

SELECT 
	t."ParentID", 
	t."Value1"
FROM
	"Parent" t
WHERE
	t."Value1" = :param_1


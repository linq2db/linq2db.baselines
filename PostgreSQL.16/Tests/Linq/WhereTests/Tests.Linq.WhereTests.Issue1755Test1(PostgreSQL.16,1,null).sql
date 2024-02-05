BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	c_1."ParentID",
	c_1."Value1"
FROM
	"Parent" c_1
WHERE
	c_1."ParentID" = :id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


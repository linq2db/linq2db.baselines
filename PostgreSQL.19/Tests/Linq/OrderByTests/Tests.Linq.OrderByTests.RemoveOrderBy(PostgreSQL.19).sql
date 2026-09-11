-- PostgreSQL.19 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
ORDER BY
	t1."ParentID"
LIMIT :take

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


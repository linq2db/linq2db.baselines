-- PostgreSQL.19 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT DISTINCT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
ORDER BY
	t1."ParentID" DESC
LIMIT :take OFFSET :skip 

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


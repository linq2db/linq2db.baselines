-- PostgreSQL.18 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT DISTINCT ON (Floor(t1."ParentID"::decimal % 3)::Int)
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
ORDER BY
	Floor(t1."ParentID"::decimal % 3)::Int,
	t1."ParentID" DESC
LIMIT :take

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


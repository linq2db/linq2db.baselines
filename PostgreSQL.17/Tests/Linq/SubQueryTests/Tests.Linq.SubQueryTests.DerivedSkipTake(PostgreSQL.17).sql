-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
		LIMIT :take OFFSET :skip 
	) t2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


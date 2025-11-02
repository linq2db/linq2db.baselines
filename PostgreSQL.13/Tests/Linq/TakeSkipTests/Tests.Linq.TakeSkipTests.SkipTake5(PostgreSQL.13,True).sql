-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
LIMIT :take OFFSET :skip 


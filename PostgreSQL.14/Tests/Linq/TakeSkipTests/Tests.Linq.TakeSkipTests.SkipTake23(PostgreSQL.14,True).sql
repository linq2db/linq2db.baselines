-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
LIMIT :take OFFSET :skip 


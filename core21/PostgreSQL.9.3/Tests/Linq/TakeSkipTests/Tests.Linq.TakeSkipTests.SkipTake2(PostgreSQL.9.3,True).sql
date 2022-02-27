BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_1 OFFSET :skip 

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_1 OFFSET :skip 


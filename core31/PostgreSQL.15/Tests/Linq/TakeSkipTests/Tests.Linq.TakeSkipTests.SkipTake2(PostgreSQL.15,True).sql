BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 5
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip OFFSET :skip_1 

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 5
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_1 OFFSET :skip_2 


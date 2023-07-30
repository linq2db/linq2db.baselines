BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip_1_1 Integer -- Int32
SET     @skip_1_1 = 5
DECLARE @skip_1_1_1 Integer -- Int32
SET     @skip_1_1_1 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_1_1 OFFSET :skip_1_1_1 

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip_1_1_1 Integer -- Int32
SET     @skip_1_1_1 = 5
DECLARE @skip_1_1_1_1 Integer -- Int32
SET     @skip_1_1_1_1 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_1_1_1 OFFSET :skip_1_1_1_1 


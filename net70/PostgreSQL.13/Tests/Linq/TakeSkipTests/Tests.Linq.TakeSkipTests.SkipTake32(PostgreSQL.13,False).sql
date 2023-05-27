BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip_4 Integer -- Int32
SET     @skip_4 = 5
DECLARE @skip_5 Integer -- Int32
SET     @skip_5 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_4 OFFSET :skip_5 

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip_5 Integer -- Int32
SET     @skip_5 = 5
DECLARE @skip_6 Integer -- Int32
SET     @skip_6 = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT :skip_5 OFFSET :skip_6 


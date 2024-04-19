BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT 5 OFFSET :skip 

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
LIMIT 5 OFFSET :skip 


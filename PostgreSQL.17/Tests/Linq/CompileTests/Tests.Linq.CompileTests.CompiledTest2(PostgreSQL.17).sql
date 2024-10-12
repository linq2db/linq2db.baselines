BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
LIMIT :p

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
LIMIT :p


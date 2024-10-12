BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
LIMIT 1


BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID


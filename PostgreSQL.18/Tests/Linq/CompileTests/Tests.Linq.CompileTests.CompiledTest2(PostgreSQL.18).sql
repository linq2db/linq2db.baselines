BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p
LIMIT :p

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p
LIMIT :p


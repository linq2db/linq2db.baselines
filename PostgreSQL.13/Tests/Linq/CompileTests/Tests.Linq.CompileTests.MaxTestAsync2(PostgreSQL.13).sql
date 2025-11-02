-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p


-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 0 AND p."ParentID" = :p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 0 AND p."ParentID" = :p


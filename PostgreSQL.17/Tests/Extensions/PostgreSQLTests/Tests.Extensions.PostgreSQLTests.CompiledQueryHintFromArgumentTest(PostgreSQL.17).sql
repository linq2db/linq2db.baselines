-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" >= :p
FOR UPDATE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" >= :p
FOR SHARE


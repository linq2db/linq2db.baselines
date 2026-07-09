-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	r."ParentID",
	r."Value1"
FROM
	"Parent" r
WHERE
	r."ParentID" = :p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 10000

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :id1 OR p."ParentID" >= :id1 OR p."ParentID" >= :id2
ORDER BY
	p."ParentID"
LIMIT 1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 2
DECLARE @id2 Integer -- Int32
SET     @id2 = 10000

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :id1 OR p."ParentID" >= :id1 OR p."ParentID" >= :id2
ORDER BY
	p."ParentID"
LIMIT 1


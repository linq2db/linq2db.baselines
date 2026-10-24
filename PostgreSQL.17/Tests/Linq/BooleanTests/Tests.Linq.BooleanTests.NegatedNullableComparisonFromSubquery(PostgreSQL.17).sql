-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x."ParentID"
FROM
	"Parent" x
WHERE
	x."Value1" <> 1 OR x."Value1" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x."ParentID"
FROM
	"Parent" x
WHERE
	NOT (x."Value1" = 1 AND x."Value1" IS NOT NULL)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	x."ParentID"
FROM
	"Parent" x
WHERE
	NOT (x."Value1" = 1 AND x."Value1" IS NOT NULL)


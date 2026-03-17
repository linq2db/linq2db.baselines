-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."Value1" = :param


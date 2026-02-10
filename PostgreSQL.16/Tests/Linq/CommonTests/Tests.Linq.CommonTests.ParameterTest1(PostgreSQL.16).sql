-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT DISTINCT
	g_1."ParentID"
FROM
	"Child" g_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" t
		WHERE
			t."ParentID" = :id AND t."ParentID" = g_1."ParentID"
	)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT DISTINCT
	g_1."ParentID"
FROM
	"Child" g_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" t
		WHERE
			t."ParentID" = :id AND t."ParentID" = g_1."ParentID"
	)


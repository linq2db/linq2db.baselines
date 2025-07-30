BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1
	),
	x."ParentID" <> 0
FROM
	"Parent" x
UNION ALL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" t2
	),
	NULL::Boolean
FROM
	"Parent" x_1


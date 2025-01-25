BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t1
		) THEN True
		ELSE False
	END,
	CASE
		WHEN x."ParentID" <> 0 THEN True
		ELSE False
	END
FROM
	"Parent" x
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t2
		) THEN True
		ELSE False
	END,
	NULL
FROM
	"Parent" x_1


BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN x."Value1" = 2 THEN True
		ELSE False
	END,
	x."ParentID",
	x."Value1",
	CASE
		WHEN x."Value1" = 1 THEN True
		ELSE False
	END
FROM
	"Parent" x
WHERE
	x."Value1" = 1 OR x."Value1" = 2


BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
WHERE
	(
		SELECT
			CASE
				WHEN r."Value1" IS NOT NULL THEN True
				ELSE False
			END
		FROM
			"Parent" r
		LIMIT 1
	) = True


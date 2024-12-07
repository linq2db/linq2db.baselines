BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t1_1
			WHERE
				t1."ParentID" = t1_1."ParentID"
		)
			THEN True
		ELSE False
	END
FROM
	"Parent" t1


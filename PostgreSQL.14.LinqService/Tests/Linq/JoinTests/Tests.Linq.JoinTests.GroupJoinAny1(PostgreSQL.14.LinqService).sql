BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				t1."ParentID" = c_1."ParentID"
		)
			THEN True
		ELSE False
	END
FROM
	"Parent" t1


BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p."ParentID" - 1
		)
			THEN True
		ELSE False
	END
FROM
	"Parent" p


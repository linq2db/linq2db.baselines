BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p."ParentID"
		)
			THEN True
		ELSE False
	END
FROM
	"Parent" p


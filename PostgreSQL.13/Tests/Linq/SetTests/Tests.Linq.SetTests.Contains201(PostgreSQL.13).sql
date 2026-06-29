-- PostgreSQL.13 PostgreSQL13

SELECT
	CASE
		WHEN p."ParentID" - 1 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN True
		ELSE False
	END
FROM
	"Parent" p


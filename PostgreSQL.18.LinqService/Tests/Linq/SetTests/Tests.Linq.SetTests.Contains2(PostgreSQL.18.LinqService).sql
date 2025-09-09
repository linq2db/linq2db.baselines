BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	CASE
		WHEN p."ParentID" IN (
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


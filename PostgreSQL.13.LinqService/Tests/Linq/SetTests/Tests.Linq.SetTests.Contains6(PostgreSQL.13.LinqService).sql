BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" + :n IN (
		SELECT
			c_1."ParentID"
		FROM
			"Child" c_1
	)


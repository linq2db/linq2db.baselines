BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (
		SELECT
			c_1."ParentID"
		FROM
			"Child" c_1
	)


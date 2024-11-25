BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	)


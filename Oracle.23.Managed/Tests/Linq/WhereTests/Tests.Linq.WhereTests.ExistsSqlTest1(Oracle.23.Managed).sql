-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" + 100 IN (
		SELECT
			c_1."ParentID"
		FROM
			"Child" c_1
	)


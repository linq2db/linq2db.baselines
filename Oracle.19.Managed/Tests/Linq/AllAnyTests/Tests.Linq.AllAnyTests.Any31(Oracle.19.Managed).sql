-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 0 AND EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 0 AND
			c_1."ParentID" > 3
	)


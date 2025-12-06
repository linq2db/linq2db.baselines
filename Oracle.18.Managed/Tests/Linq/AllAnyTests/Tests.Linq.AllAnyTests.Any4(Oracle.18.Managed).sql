-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
	)


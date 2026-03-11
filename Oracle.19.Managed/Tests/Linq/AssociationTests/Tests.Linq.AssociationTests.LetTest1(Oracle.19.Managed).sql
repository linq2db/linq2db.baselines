-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" p


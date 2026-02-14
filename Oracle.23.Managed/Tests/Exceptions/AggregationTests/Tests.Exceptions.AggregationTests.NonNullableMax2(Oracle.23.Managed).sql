-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			MAX(a_Children."ParentID") as "max_1"
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" < 0
	)
FROM
	"Parent" p


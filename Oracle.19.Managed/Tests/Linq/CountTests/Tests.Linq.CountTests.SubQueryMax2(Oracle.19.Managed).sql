-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			t1."ParentID" = a_Children."ParentID"
	))
FROM
	"Parent" t1


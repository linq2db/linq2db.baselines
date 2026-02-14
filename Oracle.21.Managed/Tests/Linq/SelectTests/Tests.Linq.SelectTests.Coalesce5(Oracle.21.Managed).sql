-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Coalesce((
		SELECT
			MAX(a_Children."ChildID") as "Max_1"
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
	), p."Value1")
FROM
	"Parent" p


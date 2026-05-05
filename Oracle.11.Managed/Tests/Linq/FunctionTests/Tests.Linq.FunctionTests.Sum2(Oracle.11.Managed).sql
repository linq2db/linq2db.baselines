-- Oracle.11.Managed Oracle11

SELECT
	Coalesce((
		SELECT
			Coalesce(SUM(a_Children."ParentID" * a_Children."ChildID"), 0)
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 2
	), 0)
FROM
	"Parent" p


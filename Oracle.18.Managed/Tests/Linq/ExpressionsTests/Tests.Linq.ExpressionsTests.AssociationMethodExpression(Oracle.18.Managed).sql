-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
				INNER JOIN "GrandChild" a_GrandChildren ON a_Children."ParentID" = a_GrandChildren."ParentID" AND a_Children."ChildID" = a_GrandChildren."ChildID"
		WHERE
			p."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" p


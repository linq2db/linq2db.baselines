-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				a_Children."ParentID",
				a_Children."ChildID"
			FROM
				"Child" a_Children
			WHERE
				p."ParentID" = a_Children."ParentID"
			ORDER BY
				a_Children."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1


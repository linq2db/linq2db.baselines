BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				(
					SELECT DISTINCT
						a_Children."ChildID",
						a_Children."ParentID"
					FROM
						"Child" a_Children
					WHERE
						p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 0
				) t1
			ORDER BY
				t1."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t2


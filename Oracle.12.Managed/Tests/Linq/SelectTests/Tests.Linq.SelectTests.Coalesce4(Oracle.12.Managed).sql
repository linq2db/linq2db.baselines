-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Coalesce((
		SELECT
			a_Parent."Value1"
		FROM
			"Child" ch
				LEFT JOIN "Parent" a_Parent ON ch."ParentID" = a_Parent."ParentID"
		WHERE
			ch."ChildID" = c_1."ChildID"
		FETCH NEXT 1 ROWS ONLY
	), c_1."ChildID")
FROM
	"Child" c_1


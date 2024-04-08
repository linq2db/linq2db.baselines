BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Nvl(t1."Value1", c_1."ChildID")
FROM
	"Child" c_1
		OUTER APPLY (
			SELECT
				a_Parent."Value1"
			FROM
				"Child" ch
					LEFT JOIN "Parent" a_Parent ON ch."ParentID" = a_Parent."ParentID"
			WHERE
				ch."ChildID" = c_1."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1


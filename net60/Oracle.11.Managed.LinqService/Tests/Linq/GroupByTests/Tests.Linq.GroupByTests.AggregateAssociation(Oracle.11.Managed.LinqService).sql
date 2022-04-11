BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Sum(Nvl(a_Parent."Value1", 0))
FROM
	"Child" t1
		LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
GROUP BY
	t1."ParentID"


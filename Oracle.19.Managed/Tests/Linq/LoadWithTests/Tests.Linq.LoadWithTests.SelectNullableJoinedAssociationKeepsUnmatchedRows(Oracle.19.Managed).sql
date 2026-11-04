-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	c_1."ChildID",
	t1."ParentID",
	t1."Value1"
FROM
	"Child" c_1
		OUTER APPLY (
			SELECT
				p."ParentID",
				p."Value1"
			FROM
				(
					SELECT
						g_1."ParentID"
					FROM
						"GrandChild" g_1
					WHERE
						g_1."ChildID" = c_1."ChildID"
					FETCH NEXT 1 ROWS ONLY
				) a_LinkedParent
					INNER JOIN "Parent" p ON a_LinkedParent."ParentID" = p."ParentID"
		) t1


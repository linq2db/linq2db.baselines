-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	c_1."ChildID",
	x_1."ParentID",
	CASE
		WHEN x_1."ParentID" IS NULL THEN NULL
		ELSE x_1."OtherChildID"
	END
FROM
	"Child" c_1
		OUTER APPLY (
			SELECT
				p."ParentID",
				(
					SELECT
						ch."ChildID"
					FROM
						"Child" ch
					WHERE
						ch."ParentID" = p."ParentID" AND ch."ChildID" <> c_1."ChildID"
					ORDER BY
						ch."ChildID"
					FETCH NEXT 1 ROWS ONLY
				) as "OtherChildID"
			FROM
				(
					SELECT
						g_1."ParentID"
					FROM
						"GrandChild" g_1
					WHERE
						g_1."ChildID" = c_1."ChildID"
					ORDER BY
						g_1."GrandChildID"
					FETCH NEXT 1 ROWS ONLY
				) x
					INNER JOIN "Parent" p ON x."ParentID" = p."ParentID"
		) x_1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


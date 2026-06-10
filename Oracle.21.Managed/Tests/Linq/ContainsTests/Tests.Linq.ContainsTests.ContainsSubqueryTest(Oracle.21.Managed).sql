-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	a."ParentID"
FROM
	"Parent" a
		INNER JOIN "Child" t ON a."ParentID" IN (
			SELECT
				c_1."ParentID"
			FROM
				"GrandChild" c_1
			WHERE
				c_1."ChildID" = t."ChildID"
		)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1


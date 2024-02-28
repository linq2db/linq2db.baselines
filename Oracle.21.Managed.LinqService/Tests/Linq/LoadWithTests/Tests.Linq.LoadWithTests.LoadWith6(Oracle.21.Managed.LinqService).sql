BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	lw_Child."ParentID",
	lw_Child."ChildID",
	detail."ParentID",
	detail."ChildID",
	detail."GrandChildID",
	a_Child."ParentID",
	a_Child."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" lw_Child
		INNER JOIN "GrandChild" detail
			LEFT JOIN "Child" a_Child ON detail."ParentID" = a_Child."ParentID" AND detail."ChildID" = a_Child."ChildID"
		ON lw_Child."ParentID" = detail."ParentID" AND lw_Child."ChildID" = detail."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" t1
		WHERE
			p."ParentID" = t1."ParentID" AND p."ChildID" = t1."ChildID"
	),
	p."ParentID",
	p."ChildID"
FROM
	"Child" p


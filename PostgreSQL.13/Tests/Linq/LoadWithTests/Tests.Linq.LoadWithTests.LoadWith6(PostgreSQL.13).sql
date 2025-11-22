-- PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	m_1."ChildID",
	d."ParentID",
	d."ChildID",
	d."GrandChildID",
	"a_Child"."ParentID",
	"a_Child"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" m_1
		INNER JOIN "GrandChild" d ON m_1."ParentID" = d."ParentID" AND m_1."ChildID" = d."ChildID"
		LEFT JOIN "Child" "a_Child" ON d."ParentID" = "a_Child"."ParentID" AND d."ChildID" = "a_Child"."ChildID"
		LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"

-- PostgreSQL.13 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" "a_GrandChildren"
		WHERE
			p."ParentID" = "a_GrandChildren"."ParentID" AND p."ChildID" = "a_GrandChildren"."ChildID"
	),
	p."ParentID",
	p."ChildID"
FROM
	"Child" p


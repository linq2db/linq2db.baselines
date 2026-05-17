-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID" AND "a_Children"."ChildID" > 20
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children_1"
		WHERE
			p."ParentID" = "a_Children_1"."ParentID" AND "a_Children_1"."ChildID" > 20
	)
FROM
	"Parent" p

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


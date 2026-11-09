-- PostgreSQL.9.2 PostgreSQL
SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON d."ParentID" = m_1."ParentID"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1


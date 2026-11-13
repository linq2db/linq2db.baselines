-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1


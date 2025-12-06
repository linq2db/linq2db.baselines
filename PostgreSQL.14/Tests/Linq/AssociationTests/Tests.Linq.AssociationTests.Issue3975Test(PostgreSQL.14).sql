-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Parent" t1
		LIMIT 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Parent" t1
LIMIT 1


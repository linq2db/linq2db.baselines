-- PostgreSQL.18 PostgreSQL12
SELECT
	m_1."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"
ORDER BY
	d."ChildID"

-- PostgreSQL.18 PostgreSQL12
SELECT
	m_1."ParentID"
FROM
	"Parent" m_1


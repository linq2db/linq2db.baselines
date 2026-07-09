-- PostgreSQL.19 PostgreSQL13

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
	m_1."ParentID"

-- PostgreSQL.19 PostgreSQL13

SELECT
	p."ParentID"
FROM
	"Parent" p
ORDER BY
	p."ParentID"


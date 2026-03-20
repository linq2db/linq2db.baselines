-- PostgreSQL.18 PostgreSQL

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
		WHERE
			p."ParentID" = 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1


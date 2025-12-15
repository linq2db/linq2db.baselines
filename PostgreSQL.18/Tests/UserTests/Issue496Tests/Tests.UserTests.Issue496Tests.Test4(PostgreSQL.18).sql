-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."ParentID",
	d."ChildID",
	d."ParentID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID"::BigInt = d."ParentID"

-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p


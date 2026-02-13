-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Item1",
	d."ChildID",
	d."ParentID"
FROM
	(
		SELECT DISTINCT
			p."ParentID" as "Item1"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON m_1."Item1"::BigInt = d."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p


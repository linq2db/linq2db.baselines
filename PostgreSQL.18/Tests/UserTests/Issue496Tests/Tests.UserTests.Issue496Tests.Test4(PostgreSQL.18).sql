-- PostgreSQL.18
-- Batch 1
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

-- Batch 2
SELECT
	p."ParentID"
FROM
	"Parent" p

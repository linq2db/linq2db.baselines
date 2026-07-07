-- PostgreSQL.14 PostgreSQL.13
-- Batch 1
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

-- Batch 2
SELECT
	t1."ParentID"
FROM
	"Parent" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t."ParentID", 
	t."Value1", 
	m_1."ParentID", 
	m_1."ChildID"
FROM
	"Parent" t
		INNER JOIN "Child" m_1 ON t."ParentID" = m_1."ParentID" AND m_1."ChildID" > 1
WHERE
	t."ParentID" IN (1, 5)
ORDER BY
	t."ParentID"


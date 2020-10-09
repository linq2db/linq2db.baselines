BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	m_1."ParentID", 
	m_1."Value1"
FROM
	"Parent" m_1
		INNER JOIN ( 
			SELECT 
				t."ParentID"
			FROM
				"Parent" t
			WHERE
				t."ParentID" = 1
			UNION ALL
			SELECT 
				t_1."ParentID"
			FROM
				"Parent" t_1
			WHERE
				t_1."ParentID" = 2
		) t1 ON t1."ParentID" = m_1."ParentID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	m_1."ParentID", 
	m_1."Value1"
FROM
	"Parent" m_1,
	( 
		SELECT 
			t."ParentID"
		FROM
			"Parent" t
		WHERE
			t."ParentID" = 1
		UNION ALL
		SELECT 
			t_1."ParentID"
		FROM
			"Parent" t_1
		WHERE
			t_1."ParentID" = 2
	) t1
WHERE
	t1."ParentID" = m_1."ParentID"


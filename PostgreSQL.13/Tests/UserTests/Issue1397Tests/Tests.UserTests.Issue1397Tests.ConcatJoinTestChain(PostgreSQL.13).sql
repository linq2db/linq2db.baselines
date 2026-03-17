-- PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	m_1."Value1"
FROM
	"Parent" m_1
		INNER JOIN (
			SELECT
				id."ParentID"
			FROM
				"Parent" id
			WHERE
				id."ParentID" = 1
			UNION ALL
			SELECT
				t."ParentID"
			FROM
				"Parent" t
			WHERE
				t."ParentID" = 2
		) t1 ON m_1."ParentID" = t1."ParentID"

-- PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	m_1."Value1"
FROM
	"Parent" m_1,
	(
		SELECT
			id."ParentID" as id
		FROM
			"Parent" id
		WHERE
			id."ParentID" = 1
		UNION ALL
		SELECT
			t."ParentID" as id
		FROM
			"Parent" t
		WHERE
			t."ParentID" = 2
	) id_1
WHERE
	id_1.id = m_1."ParentID"


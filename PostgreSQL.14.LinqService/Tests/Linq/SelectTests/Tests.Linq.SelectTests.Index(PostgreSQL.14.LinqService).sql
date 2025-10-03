BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	m_2."ParentID",
	m_2."ChildID",
	(m_2.c1::decimal % 2)::decimal,
	m_2.c1
FROM
	(
		SELECT
			m_1."ChildID",
			ROW_NUMBER() OVER (ORDER BY m_1."ChildID" DESC) - 1 as c1,
			"a_Parent"."ParentID"
		FROM
			"Child" m_1
				LEFT JOIN "Parent" "a_Parent" ON m_1."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" IS NOT NULL AND m_1."ParentID" > 0
	) m_2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	m_2."ParentID",
	m_2."ChildID",
	(m_2.c1::decimal % 2)::decimal,
	m_2.c1
FROM
	(
		SELECT
			m_1."ChildID",
			ROW_NUMBER() OVER (ORDER BY m_1."ChildID" DESC) - 1 as c1,
			"a_Parent"."ParentID"
		FROM
			"Child" m_1
				LEFT JOIN "Parent" "a_Parent" ON m_1."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" IS NOT NULL AND m_1."ParentID" > 0
	) m_2


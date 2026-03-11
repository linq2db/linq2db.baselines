-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			SUM(CASE
				WHEN d."ParentID" IS NOT NULL THEN d."ParentID"
				ELSE -100
			END)
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN "Child" d ON p."ParentID" = d."ParentID"
	)
FROM
	"Parent" p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Floor(p."ParentID"::decimal % 2)::Int = 0 THEN Floor(p."ParentID"::decimal % 3)::Int = 0
		WHEN Floor(p."ParentID"::decimal % 4)::Int = 0 THEN p."ParentID" > 0
		ELSE p."ParentID" < 5
	END
FROM
	"Parent" p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


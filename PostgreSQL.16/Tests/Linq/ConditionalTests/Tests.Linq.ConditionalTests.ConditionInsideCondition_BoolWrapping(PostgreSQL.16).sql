-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN (p."ParentID"::decimal % 2)::decimal = 0 THEN (p."ParentID"::decimal % 3)::decimal = 0
		WHEN (p."ParentID"::decimal % 4)::decimal = 0 THEN p."ParentID" > 0
		ELSE p."ParentID" < 5
	END
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


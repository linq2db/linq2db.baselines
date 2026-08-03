-- PostgreSQL.13 PostgreSQL12
SELECT
	CASE
		WHEN (s."ParentID"::decimal % 2)::decimal = 0 THEN (s."ParentID"::decimal % 3)::decimal = 0
		WHEN (s."ParentID"::decimal % 4)::decimal = 0 THEN s."ParentID" > 0
		ELSE s."ParentID" < 5
	END
FROM
	"Parent" s
WHERE
	CASE
		WHEN (s."ParentID"::decimal % 2)::decimal = 0 THEN (s."ParentID"::decimal % 3)::decimal = 0
		WHEN (s."ParentID"::decimal % 4)::decimal = 0 THEN s."ParentID" > 0
		ELSE s."ParentID" < 5
	END

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


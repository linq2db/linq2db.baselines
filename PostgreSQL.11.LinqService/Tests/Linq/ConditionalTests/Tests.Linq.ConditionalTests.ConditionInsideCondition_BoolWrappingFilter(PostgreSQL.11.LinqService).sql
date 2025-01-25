BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	s_1."Value_1"
FROM
	(
		SELECT
			CASE
				WHEN (s."ParentID"::decimal % 2)::decimal = 0 THEN CASE
					WHEN (s."ParentID"::decimal % 3)::decimal = 0 THEN True
					ELSE False
				END
				WHEN (s."ParentID"::decimal % 4)::decimal = 0 THEN CASE
					WHEN s."ParentID" > 0 THEN True
					ELSE False
				END
				ELSE CASE
					WHEN s."ParentID" < 5 THEN True
					ELSE False
				END
			END as "Value_1"
		FROM
			"Parent" s
	) s_1
WHERE
	s_1."Value_1" = True

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


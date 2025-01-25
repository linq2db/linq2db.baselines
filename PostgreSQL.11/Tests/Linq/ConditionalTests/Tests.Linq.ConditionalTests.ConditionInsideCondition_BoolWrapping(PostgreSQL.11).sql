BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN (p."ParentID"::decimal % 2)::decimal = 0 THEN CASE
			WHEN (p."ParentID"::decimal % 3)::decimal = 0 THEN True
			ELSE False
		END
		WHEN (p."ParentID"::decimal % 4)::decimal = 0 THEN CASE
			WHEN p."ParentID" > 0 THEN True
			ELSE False
		END
		ELSE CASE
			WHEN p."ParentID" < 5 THEN True
			ELSE False
		END
	END
FROM
	"Parent" p

BeforeExecute
BeginTransaction(RepeatableRead)
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
DisposeTransaction
BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


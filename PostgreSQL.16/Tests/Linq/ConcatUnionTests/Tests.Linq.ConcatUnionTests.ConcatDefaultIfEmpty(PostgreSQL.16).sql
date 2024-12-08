BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	0::Int,
	t1."ParentID",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID",
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				p."ParentID" = "a_Children"."ParentID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	p."ParentID" = 1
UNION ALL
SELECT
	1::Int,
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p_1
WHERE
	p_1."ParentID" <> 1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1


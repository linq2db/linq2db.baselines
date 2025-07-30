BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	t1."ParentID",
	t1."ChildID",
	t2."ParentID",
	t2."ChildID"
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
			ORDER BY
				"a_Children"."ChildID"
			LIMIT 1
		) t1 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				"a_Children_1"."ParentID",
				"a_Children_1"."ChildID"
			FROM
				"Child" "a_Children_1"
			WHERE
				p."ParentID" = "a_Children_1"."ParentID"
			ORDER BY
				"a_Children_1"."ChildID"
			LIMIT 1
		) t2 ON 1=1

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


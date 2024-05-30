BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			"Parent" t2
				INNER JOIN LATERAL (
					SELECT
						*
					FROM
						"Child" ch
					WHERE
						t2."ParentID" = ch."ParentID"
					ORDER BY
						ch."ChildID" DESC
					LIMIT 1
				) t1 ON 1=1
		WHERE
			t2."ParentID" = 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t2."ParentID",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" t2
		INNER JOIN LATERAL (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				t2."ParentID" = ch."ParentID"
			ORDER BY
				ch."ChildID" DESC
			LIMIT 1
		) t1 ON 1=1
WHERE
	t2."ParentID" = 1


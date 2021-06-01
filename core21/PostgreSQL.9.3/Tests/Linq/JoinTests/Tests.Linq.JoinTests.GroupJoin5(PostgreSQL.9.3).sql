BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID"
			ORDER BY
				ch."ChildID"
			LIMIT :take
		) t1 ON 1=1
WHERE
	p."ParentID" >= 1
ORDER BY
	p."ParentID"


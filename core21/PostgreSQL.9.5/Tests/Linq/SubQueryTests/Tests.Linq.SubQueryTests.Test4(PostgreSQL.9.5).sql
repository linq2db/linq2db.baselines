BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID" AND ch."ChildID" = ch."ParentID" * 10 + 1
			LIMIT :take
		) t1 ON 1=1
WHERE
	p."ParentID" <> 5


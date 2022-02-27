BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			ch."ChildID"
		FROM
			"Child" ch
		WHERE
			ch."ParentID" = p."ParentID" AND ch."ChildID" = ch."ParentID" * 10 + 1
		LIMIT :take
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5


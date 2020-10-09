BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			ch."ParentID"
		FROM
			"Child" ch
		WHERE
			ch."ParentID" = p."ParentID"
		LIMIT :take
	)
FROM
	"Parent" p
WHERE
	p."ParentID" = 1


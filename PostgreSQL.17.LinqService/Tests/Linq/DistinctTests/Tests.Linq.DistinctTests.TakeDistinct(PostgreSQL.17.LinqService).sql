BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 4

SELECT DISTINCT
	t1."ParentID"
FROM
	(
		SELECT
			ch."ParentID"
		FROM
			"Child" ch
		ORDER BY
			ch."ParentID"
		LIMIT :take
	) t1


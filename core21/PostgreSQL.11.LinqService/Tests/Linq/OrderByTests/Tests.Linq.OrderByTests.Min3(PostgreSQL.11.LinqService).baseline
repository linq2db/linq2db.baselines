BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	Min(t1."ParentID")
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		ORDER BY
			p."Value1"
		LIMIT :take
	) t1


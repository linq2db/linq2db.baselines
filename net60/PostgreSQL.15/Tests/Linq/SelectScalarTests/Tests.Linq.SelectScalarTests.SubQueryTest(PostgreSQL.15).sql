BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		LIMIT :take
	)


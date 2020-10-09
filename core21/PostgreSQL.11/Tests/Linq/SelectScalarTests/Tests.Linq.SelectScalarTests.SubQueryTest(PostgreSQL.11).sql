BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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


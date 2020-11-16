BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			"Child" t1
		LIMIT :take
	) t2


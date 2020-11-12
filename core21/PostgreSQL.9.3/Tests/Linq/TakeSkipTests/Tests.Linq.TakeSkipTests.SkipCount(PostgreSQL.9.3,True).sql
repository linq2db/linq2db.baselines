BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			"Child" t1
		OFFSET :skip 
	) t2


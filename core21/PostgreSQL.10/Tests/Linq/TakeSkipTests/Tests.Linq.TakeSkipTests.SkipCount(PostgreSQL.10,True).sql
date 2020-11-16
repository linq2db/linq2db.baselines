BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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


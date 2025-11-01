-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		OFFSET :skip 
	) t2


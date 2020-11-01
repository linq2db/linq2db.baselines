BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @rand Integer -- Int32
SET     @rand = 3

SELECT
	Count(*)
FROM
	(
		SELECT
			c_1."ParentID",
			:rand as "RandValue"
		FROM
			"Child" c_1
	) t1
GROUP BY
	t1."ParentID",
	t1."RandValue"


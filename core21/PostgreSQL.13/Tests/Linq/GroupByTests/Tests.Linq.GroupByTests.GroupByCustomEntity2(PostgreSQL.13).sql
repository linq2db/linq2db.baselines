BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @RandValue Integer -- Int32
SET     @RandValue = 0

SELECT
	Count(*)
FROM
	(
		SELECT
			c_1."ParentID",
			:RandValue as "RandValue"
		FROM
			"Child" c_1
	) t1
GROUP BY
	t1."ParentID",
	t1."RandValue"


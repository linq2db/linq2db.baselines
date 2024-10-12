BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	s.value
FROM
	(
		SELECT
			ARRAY[1,2]::int[] as c1
	) c_1
		INNER JOIN LATERAL unnest(c_1.c1) with ordinality s (value, index) ON 1=1


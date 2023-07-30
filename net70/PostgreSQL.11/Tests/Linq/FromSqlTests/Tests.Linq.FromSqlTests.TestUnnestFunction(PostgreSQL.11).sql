BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	s.value,
	s."index"
FROM
	(
		SELECT
			ARRAY[10,20]::int[] as c1
	) c_1
		INNER JOIN LATERAL unnest(c_1.c1) with ordinality s (value, index) ON 1=1


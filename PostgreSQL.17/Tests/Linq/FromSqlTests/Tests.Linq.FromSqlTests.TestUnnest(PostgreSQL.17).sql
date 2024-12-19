BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	s.value
FROM
	(
		SELECT
			1 as c1
	) c_1
		CROSS JOIN unnest(ARRAY[1,2]::int[]) with ordinality s (value, index)


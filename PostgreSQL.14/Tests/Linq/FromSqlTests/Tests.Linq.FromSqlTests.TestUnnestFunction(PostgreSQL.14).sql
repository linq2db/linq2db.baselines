BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	s.value,
	s."index"
FROM
	(
		SELECT
			1 as c1
	) c_1
		CROSS JOIN unnest(ARRAY[10,20]::int[]) with ordinality s (value, index)


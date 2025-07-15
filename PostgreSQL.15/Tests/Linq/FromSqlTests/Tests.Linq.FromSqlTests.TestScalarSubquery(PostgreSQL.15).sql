BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s
FROM
	(
		SELECT
			1 as c1
	) c_1
		CROSS JOIN regexp_split_to_table('hello world'::text, E'\\s+') s


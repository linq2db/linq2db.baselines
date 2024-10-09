BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	s
FROM
	(
		SELECT
			1 as c1
	) c_1
		CROSS JOIN regexp_split_to_table('hello world'::text, E'\\s+') s


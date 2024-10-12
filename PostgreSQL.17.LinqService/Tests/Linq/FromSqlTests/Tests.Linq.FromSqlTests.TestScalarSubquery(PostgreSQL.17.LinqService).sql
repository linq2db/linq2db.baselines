BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	s
FROM
	(
		SELECT
			'hello world' as c1
	) c_1
		INNER JOIN LATERAL regexp_split_to_table(c_1.c1::text, E'\\s+') s ON 1=1


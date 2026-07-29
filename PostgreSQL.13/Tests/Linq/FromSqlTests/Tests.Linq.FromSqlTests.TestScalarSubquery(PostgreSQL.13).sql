-- PostgreSQL.13 PostgreSQL12
SELECT
	s_1.c1
FROM
	(
		SELECT
			'hello world' as c1
	) c_1
		INNER JOIN LATERAL (
			SELECT
				s as c1
			FROM
				regexp_split_to_table(c_1.c1::text, E'\\s+') s
		) s_1 ON 1=1


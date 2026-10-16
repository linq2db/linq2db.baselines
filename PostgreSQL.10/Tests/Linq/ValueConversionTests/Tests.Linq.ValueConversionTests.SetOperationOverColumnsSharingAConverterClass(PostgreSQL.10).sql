-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Code"
FROM
	(
		SELECT
			r."Id",
			r."Code"
		FROM
			"SharedConverterRowA" r
		UNION
		SELECT
			r_1."Id",
			r_1."Code"
		FROM
			"SharedConverterRowB" r_1
	) t1
ORDER BY
	t1."Id"


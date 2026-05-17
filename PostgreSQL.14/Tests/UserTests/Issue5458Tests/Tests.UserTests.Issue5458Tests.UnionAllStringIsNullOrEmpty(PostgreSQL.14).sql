-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Value_1" IS NULL OR Length(t1."Value_1") = 0
FROM
	(
		SELECT
			t."Id",
			t."Value" as "Value_1"
		FROM
			"StringTable" t
		WHERE
			t."Id" <= 2
		UNION ALL
		SELECT
			t_1."Id",
			t_1."Value" as "Value_1"
		FROM
			"StringTable" t_1
		WHERE
			t_1."Id" > 2
	) t1
ORDER BY
	t1."Id"


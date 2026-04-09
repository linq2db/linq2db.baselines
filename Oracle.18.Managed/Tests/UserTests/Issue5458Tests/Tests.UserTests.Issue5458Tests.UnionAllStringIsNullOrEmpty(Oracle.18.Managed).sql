-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	CASE
		WHEN t1."Value_1" IS NULL OR Length(t1."Value_1") = 0 THEN 1
		ELSE 0
	END
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


-- Oracle.11.Managed Oracle11

SELECT
	t2."Id",
	t2."TestId"
FROM
	(
		SELECT
			t1."Id",
			t1."TestId"
		FROM
			"TestTable" t1
		ORDER BY
			t1."Id"
	) t2
WHERE
	ROWNUM <= 1
ORDER BY
	t2."Id"


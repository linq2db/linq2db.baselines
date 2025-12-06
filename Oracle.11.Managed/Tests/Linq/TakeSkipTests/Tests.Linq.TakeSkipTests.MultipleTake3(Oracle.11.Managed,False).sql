-- Oracle.11.Managed Oracle11

SELECT
	t2."Id",
	t2."Value_1"
FROM
	(
		SELECT
			t1."Id",
			t1."Value" as "Value_1"
		FROM
			"TakeSkipClass" t1
		ORDER BY
			t1."Value"
	) t2
WHERE
	ROWNUM <= 1
ORDER BY
	t2."Value_1"


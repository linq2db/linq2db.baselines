BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t2."Value_1"
FROM
	(
		SELECT DISTINCT
			t1."Value" as "Value_1"
		FROM
			"TakeSkipClass" t1
	) t2
WHERE
	ROWNUM <= 3


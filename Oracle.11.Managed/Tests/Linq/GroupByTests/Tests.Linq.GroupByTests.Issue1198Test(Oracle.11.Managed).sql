-- Oracle.11.Managed Oracle11

SELECT
	t1.COUNT_1
FROM
	(
		SELECT
			COUNT(CASE
				WHEN t."Status" = 3 THEN 1
				ELSE NULL
			END) as COUNT_1
		FROM
			"Issue1192Table" t
		WHERE
			t."MyOtherId" = 12
	) t1
WHERE
	ROWNUM <= 1


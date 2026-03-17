-- Oracle.11.Managed Oracle11

SELECT
	t1."MyGroupedCount"
FROM
	(
		SELECT
			COUNT(CASE
				WHEN t."Status" = 3 THEN 1
				ELSE NULL
			END) as "MyGroupedCount"
		FROM
			"Issue1192Table" t
		WHERE
			t."MyOtherId" = 12
	) t1
WHERE
	ROWNUM <= 1


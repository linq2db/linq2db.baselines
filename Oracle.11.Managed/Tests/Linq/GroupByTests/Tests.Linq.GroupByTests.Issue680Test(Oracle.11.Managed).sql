BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(CASE
		WHEN g_1."TimeStamp" > TIMESTAMP '2020-02-29 17:54:55.123123'
			THEN 1
		ELSE NULL
	END)
FROM
	"Issue680Table" g_1
GROUP BY
	g_1."TimeStamp"


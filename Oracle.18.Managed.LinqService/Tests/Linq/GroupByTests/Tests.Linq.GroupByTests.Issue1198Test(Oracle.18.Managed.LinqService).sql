BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(CASE
		WHEN t."Status" = 3 THEN 1
		ELSE NULL
	END) as COUNT_1
FROM
	"Issue1192Table" t
WHERE
	t."MyOtherId" = 12
FETCH NEXT 1 ROWS ONLY


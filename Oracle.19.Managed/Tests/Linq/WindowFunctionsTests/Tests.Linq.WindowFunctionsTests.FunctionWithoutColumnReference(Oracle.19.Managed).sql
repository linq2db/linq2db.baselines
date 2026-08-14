-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	CASE
		WHEN SUM(t."IntValue") OVER () > 0 THEN 1
		ELSE 0
	END
FROM
	"WindowFunctionTestEntity" t


-- Oracle.11.Managed Oracle11
SELECT
	x."Id",
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN x."IntValue" = 20 THEN 1
		ELSE 0
	END, x."Id"),
	ROW_NUMBER() OVER (PARTITION BY CASE
		WHEN x."IntValue" = 20 THEN 1
		ELSE 0
	END ORDER BY x."Id")
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"


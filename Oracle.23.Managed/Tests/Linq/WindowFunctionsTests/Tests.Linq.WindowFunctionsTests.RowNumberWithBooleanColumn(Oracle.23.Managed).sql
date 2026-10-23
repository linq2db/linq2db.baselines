-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	x."Id",
	ROW_NUMBER() OVER (ORDER BY x."BoolValue", x."Id"),
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN MOD(x."IntValue", 20) = 0 THEN 1
		ELSE 0
	END, x."Id"),
	ROW_NUMBER() OVER (PARTITION BY x."BoolValue" ORDER BY x."Id"),
	ROW_NUMBER() OVER (PARTITION BY CASE
		WHEN MOD(x."IntValue", 20) = 0 THEN 1
		ELSE 0
	END ORDER BY x."Id"),
	ROW_NUMBER() OVER (PARTITION BY x."NullableBoolValue" ORDER BY x."Id")
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"


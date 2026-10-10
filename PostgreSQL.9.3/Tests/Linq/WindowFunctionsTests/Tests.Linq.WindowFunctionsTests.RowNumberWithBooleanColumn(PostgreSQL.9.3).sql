-- PostgreSQL.9.3 PostgreSQL
SELECT
	x."Id",
	ROW_NUMBER() OVER (ORDER BY x."BoolValue", x."Id"),
	ROW_NUMBER() OVER (ORDER BY Floor(x."IntValue"::decimal % 20)::Int = 0, x."Id"),
	ROW_NUMBER() OVER (PARTITION BY x."BoolValue" ORDER BY x."Id"),
	ROW_NUMBER() OVER (PARTITION BY Floor(x."IntValue"::decimal % 20)::Int = 0 ORDER BY x."Id"),
	ROW_NUMBER() OVER (PARTITION BY x."NullableBoolValue" ORDER BY x."Id")
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"


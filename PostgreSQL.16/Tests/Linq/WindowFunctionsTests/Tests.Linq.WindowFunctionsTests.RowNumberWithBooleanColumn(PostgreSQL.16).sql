-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	x."Id",
	ROW_NUMBER() OVER (ORDER BY x."BoolValue", x."Id"),
	ROW_NUMBER() OVER (ORDER BY (x."IntValue"::decimal % 20)::decimal = 0, x."Id"),
	ROW_NUMBER() OVER (PARTITION BY x."BoolValue" ORDER BY x."Id"),
	ROW_NUMBER() OVER (PARTITION BY (x."IntValue"::decimal % 20)::decimal = 0 ORDER BY x."Id"),
	ROW_NUMBER() OVER (PARTITION BY x."NullableBoolValue" ORDER BY x."Id")
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"


-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	MAX("t"."IntValue") OVER (PARTITION BY "t"."CategoryId" ORDER BY CASE
		WHEN "t"."IntValue" = 20 THEN 1
		ELSE 0
	END, "t"."Id"),
	MAX("t"."IntValue") OVER (PARTITION BY CASE
		WHEN "t"."IntValue" = 20 THEN 1
		ELSE 0
	END ORDER BY "t"."Id"),
	MAX("t"."IntValue") OVER (PARTITION BY CASE
		WHEN "t"."NullableIntValue" IS NOT NULL THEN 1
		ELSE 0
	END ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"


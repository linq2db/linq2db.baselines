-- Firebird.5 Firebird4
SELECT
	"x"."Id",
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN "x"."NullableIntValue" IS NULL THEN NULL
		WHEN "x"."NullableIntValue" > 40 THEN TRUE
		ELSE FALSE
	END, "x"."Id")
FROM
	"WindowFunctionTestEntity" "x"
ORDER BY
	"x"."Id"


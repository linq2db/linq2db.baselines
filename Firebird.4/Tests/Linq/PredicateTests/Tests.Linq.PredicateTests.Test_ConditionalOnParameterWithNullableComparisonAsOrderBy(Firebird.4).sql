-- Firebird.4 Firebird4
SELECT
	"r"."Id"
FROM
	"NullableFlagTable" "r"
ORDER BY
	CASE
		WHEN "r".A = "r".B OR "r".A IS NULL AND "r".B IS NULL THEN TRUE
		ELSE FALSE
	END,
	"r"."Id"


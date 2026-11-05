-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	CASE
		WHEN "r".A = "r".B THEN TRUE
		ELSE FALSE
	END
FROM
	"NullableFlagTable" "r"
ORDER BY
	"r"."Id"


-- Firebird.5 Firebird4
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


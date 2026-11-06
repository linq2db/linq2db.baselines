-- Firebird.5 Firebird4
UPDATE
	"NullableFlagTable" "t1"
SET
	"Flag" = CASE
		WHEN "t1".A = "t1".B OR "t1".A IS NULL AND "t1".B IS NULL
			THEN TRUE
		ELSE FALSE
	END

-- Firebird.5 Firebird4
SELECT
	"r"."Id",
	"r"."Flag"
FROM
	"NullableFlagTable" "r"
ORDER BY
	"r"."Id"


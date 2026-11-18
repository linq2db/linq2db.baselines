-- Firebird.2.5 Firebird
UPDATE
	"NullableFlagTable" "t1"
SET
	"Flag" = CASE
		WHEN "t1".A = "t1".B OR "t1".A IS NULL AND "t1".B IS NULL
			THEN '1'
		ELSE '0'
	END

-- Firebird.2.5 Firebird
SELECT
	"r"."Id",
	"r"."Flag"
FROM
	"NullableFlagTable" "r"
ORDER BY
	"r"."Id"


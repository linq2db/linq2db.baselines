-- Firebird.3 Firebird3
UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Id" > 0 THEN "t1"."Value" = FALSE OR "t1"."Value" IS NULL
		ELSE NULL
	END

-- Firebird.3 Firebird3
SELECT
	"r"."Value"
FROM
	"TestBool" "r"
ORDER BY
	"r"."Id"


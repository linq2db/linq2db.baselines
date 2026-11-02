-- Firebird.5 Firebird4
UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Id" > 0 THEN "t1"."Value" = FALSE OR "t1"."Value" IS NULL
		ELSE NULL
	END

-- Firebird.5 Firebird4
SELECT
	"r"."Value"
FROM
	"TestBool" "r"
ORDER BY
	"r"."Id"


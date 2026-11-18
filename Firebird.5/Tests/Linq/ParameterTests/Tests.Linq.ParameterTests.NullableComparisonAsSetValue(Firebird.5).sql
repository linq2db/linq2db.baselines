-- Firebird.5 Firebird4
UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Value" = FALSE OR "t1"."Value" IS NULL THEN TRUE
		ELSE FALSE
	END

-- Firebird.5 Firebird4
SELECT
	"r"."Value"
FROM
	"TestBool" "r"
ORDER BY
	"r"."Id"


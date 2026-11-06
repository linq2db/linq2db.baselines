-- Firebird.3 Firebird3
UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Id" > 0 THEN CASE
			WHEN "t1"."Value" = FALSE OR "t1"."Value" IS NULL THEN TRUE
			ELSE FALSE
		END
		ELSE NULL
	END

-- Firebird.3 Firebird3
SELECT
	"r"."Value"
FROM
	"TestBool" "r"
ORDER BY
	"r"."Id"


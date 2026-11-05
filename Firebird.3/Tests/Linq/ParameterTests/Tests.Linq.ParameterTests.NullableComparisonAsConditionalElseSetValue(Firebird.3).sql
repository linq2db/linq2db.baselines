-- Firebird.3 Firebird3
UPDATE
	"SetFlagTable" "t1"
SET
	F = CASE
		WHEN "t1".C IS NULL THEN "t1".F
		WHEN "t1".A = "t1".B OR "t1".A IS NULL AND "t1".B IS NULL
			THEN TRUE
		ELSE FALSE
	END

-- Firebird.3 Firebird3
SELECT
	"r".F
FROM
	"SetFlagTable" "r"
ORDER BY
	"r"."Id"


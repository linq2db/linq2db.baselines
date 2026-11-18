-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	CASE
		WHEN "r".C IS NULL THEN CASE
			WHEN "r".A = "r".B OR "r".A IS NULL AND "r".B IS NULL THEN TRUE
			ELSE FALSE
		END
		ELSE "r"."Flag"
	END
FROM
	"NullableFlagTable" "r"

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1"."Flag"
FROM
	"NullableFlagTable" "t1"


-- Firebird.5 Firebird4
SELECT
	"r"."Id",
	CASE
		WHEN "r".A = "r".B OR "r".A IS NULL AND "r".B IS NULL THEN TRUE
		ELSE FALSE
	END
FROM
	"NullableFlagTable" "r"
UNION ALL
SELECT
	"r_1"."Id" + 1000,
	"r_1"."Flag"
FROM
	"NullableFlagTable" "r_1"

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1"."Flag"
FROM
	"NullableFlagTable" "t1"


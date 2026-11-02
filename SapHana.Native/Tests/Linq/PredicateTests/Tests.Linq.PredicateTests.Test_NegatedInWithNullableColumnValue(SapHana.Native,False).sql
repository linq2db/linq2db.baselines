-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" <> "r"."Value4" OR "r"."Value5" IS NULL AND "r"."Value4" IS NOT NULL OR
	"r"."Value5" IS NOT NULL AND "r"."Value4" IS NULL

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT (("r"."Value5" = "r"."Value4" OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL) AND NOT ("r"."Value5" IS NULL AND "r"."Value4" IS NOT NULL) AND NOT ("r"."Value5" IS NOT NULL AND "r"."Value4" IS NULL) OR "r"."Value5" = "r"."Value1" AND "r"."Value5" IS NOT NULL)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	CASE
		WHEN "r"."Value5" = "r"."Value4" OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL
			THEN 1
		ELSE 0
	END
FROM
	"BooleanTable" "r"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"


-- Firebird.4 Firebird4

SELECT
	"r"."Id",
	"r"."Value1" = "r"."Value2",
	"r"."Value1" <> "r"."Value2",
	"r"."Value1" > "r"."Value2",
	"r"."Value1" < "r"."Value2",
	"r"."Value1" >= "r"."Value2",
	"r"."Value1" <= "r"."Value2",
	CASE
		WHEN "r"."Value4" = "r"."Value5" OR "r"."Value4" IS NULL AND "r"."Value5" IS NULL
			THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value4" <> "r"."Value5" OR "r"."Value4" IS NULL AND "r"."Value5" IS NOT NULL OR "r"."Value4" IS NOT NULL AND "r"."Value5" IS NULL
			THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value4" > "r"."Value5" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value4" < "r"."Value5" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value4" >= "r"."Value5" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value4" <= "r"."Value5" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value1" = "r"."Value4" THEN TRUE
		ELSE FALSE
	END,
	"r"."Value1" <> "r"."Value4" OR "r"."Value4" IS NULL,
	CASE
		WHEN "r"."Value1" > "r"."Value4" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value1" < "r"."Value4" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value1" >= "r"."Value4" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value1" <= "r"."Value4" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value5" = "r"."Value2" THEN TRUE
		ELSE FALSE
	END,
	"r"."Value5" <> "r"."Value2" OR "r"."Value5" IS NULL,
	CASE
		WHEN "r"."Value5" > "r"."Value2" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value5" < "r"."Value2" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value5" >= "r"."Value2" THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "r"."Value5" <= "r"."Value2" THEN TRUE
		ELSE FALSE
	END
FROM
	"BooleanTable" "r"
WHERE
	"r"."Id" <> -1

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"


-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	ROUND("r"."F"),
	ROUND("r"."F", "r"."P"),
	CAST(CASE
		WHEN CAST("r"."F" AS Decimal(38, 10)) - FLOOR(CAST("r"."F" AS Decimal(38, 10))) = 0.5
			THEN ROUND(CAST("r"."F" AS Decimal(38, 10)) * 0.5, 0) * 2
		ELSE ROUND(CAST("r"."F" AS Decimal(38, 10)), 0)
	END AS Double),
	CAST(CASE
		WHEN (CAST("r"."F" AS Decimal(38, 10)) * 2 = ROUND(CAST("r"."F" AS Decimal(38, 10)) * 2, "r"."P") OR "r"."F" IS NULL AND ("r"."F" IS NULL OR "r"."P" IS NULL)) AND (CAST("r"."F" AS Decimal(38, 10)) <> ROUND(CAST("r"."F" AS Decimal(38, 10)), "r"."P") OR "r"."F" IS NULL AND NOT ("r"."F" IS NULL OR "r"."P" IS NULL) OR "r"."F" IS NOT NULL AND "r"."P" IS NULL)
			THEN ROUND(CAST("r"."F" AS Decimal(38, 10)) / 2, "r"."P") * 2
		ELSE ROUND(CAST("r"."F" AS Decimal(38, 10)), "r"."P")
	END AS Double)
FROM
	"RoundValues" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."D",
	"t1"."F",
	"t1"."P"
FROM
	"RoundValues" "t1"


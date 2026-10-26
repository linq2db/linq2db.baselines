-- Firebird.2.5 Firebird
SELECT
	"r"."Id",
	ROUND("r".D),
	ROUND("r".D, "r".P),
	CASE
		WHEN "r".D - FLOOR("r".D) = 0.5 THEN ROUND("r".D * 0.5, 0) * 2
		ELSE ROUND("r".D, 0)
	END,
	CASE
		WHEN ("r".D * 2 = ROUND("r".D * 2, "r".P) OR "r".D IS NULL AND ("r".D IS NULL OR "r".P IS NULL)) AND ("r".D <> ROUND("r".D, "r".P) OR "r".D IS NULL AND NOT ("r".D IS NULL OR "r".P IS NULL) OR "r".D IS NOT NULL AND "r".P IS NULL)
			THEN ROUND("r".D / 2, "r".P) * 2
		ELSE ROUND("r".D, "r".P)
	END
FROM
	"RoundValues" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1".D,
	"t1".F,
	"t1".P
FROM
	"RoundValues" "t1"


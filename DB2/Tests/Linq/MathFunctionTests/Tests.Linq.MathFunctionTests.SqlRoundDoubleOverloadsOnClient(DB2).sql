-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	sign("r".F) * (CASE
		WHEN abs("r".F) * power(CAST(10 AS Float), "r".P) - floor(abs("r".F) * power(CAST(10 AS Float), "r".P)) = 0.5
			THEN floor(abs("r".F) * power(CAST(10 AS Float), "r".P)) + 1
		ELSE round(abs("r".F) * power(CAST(10 AS Float), "r".P), 0)
	END / power(CAST(10 AS Float), "r".P)),
	"r".F,
	CASE
		WHEN ("r".F * 2 = ROUND("r".F * 2, "r".P) OR "r".F IS NULL AND ("r".F IS NULL OR "r".P IS NULL)) AND ("r".F <> ROUND("r".F, "r".P) OR "r".F IS NULL AND NOT ("r".F IS NULL OR "r".P IS NULL) OR "r".F IS NOT NULL AND "r".P IS NULL)
			THEN ROUND("r".F / 2, "r".P) * 2
		ELSE ROUND("r".F, "r".P)
	END
FROM
	"RoundValues" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".D,
	"t1".F,
	"t1".P
FROM
	"RoundValues" "t1"


-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	sign("r".F) * (CASE
		WHEN abs("r".F) * power(CAST(10 AS Float), "r".P) - floor(abs("r".F) * power(CAST(10 AS Float), "r".P)) = 0.5
			THEN floor(abs("r".F) * power(CAST(10 AS Float), "r".P)) + 1
		ELSE round(abs("r".F) * power(CAST(10 AS Float), "r".P), 0)
	END / power(CAST(10 AS Float), "r".P))
FROM
	"ResidueValues" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".F,
	"t1".P
FROM
	"ResidueValues" "t1"


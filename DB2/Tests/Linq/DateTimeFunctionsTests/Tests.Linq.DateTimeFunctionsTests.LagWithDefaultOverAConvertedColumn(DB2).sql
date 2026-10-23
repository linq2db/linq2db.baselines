-- DB2 DB2.LUW DB2LUW
DECLARE @fallback Timestamp(20) -- DateTime
SET     @fallback = CAST('2026-05-25-09.00.00.000000' AS TIMESTAMP(6))

SELECT
	LAG("r"."Value", 1, CAST(@fallback AS timestamp)) OVER (ORDER BY "r"."Id")
FROM
	"CoarseConvertedRow" "r"
ORDER BY
	"r"."Id"


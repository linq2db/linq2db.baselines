-- DB2 DB2.LUW DB2LUW
DECLARE @low Time(6)
SET     @low = '01:30:00'
DECLARE @high Time(6)
SET     @high = '03:00:00'

SELECT
	"r"."Id"
FROM
	"BetweenTimeRow" "r"
WHERE
	"r"."Value" BETWEEN @low AND @high
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @low Time(6)
SET     @low = '01:30:00'
DECLARE @high Time(6)
SET     @high = '03:00:00'

SELECT
	"r"."Id"
FROM
	"BetweenTimeRow" "r"
WHERE
	"r"."Value" NOT BETWEEN @low AND @high
ORDER BY
	"r"."Id"


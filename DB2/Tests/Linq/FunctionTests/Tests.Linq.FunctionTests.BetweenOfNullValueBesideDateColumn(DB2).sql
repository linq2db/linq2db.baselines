-- DB2 DB2.LUW DB2LUW
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@none BETWEEN "r"."Day" AND @later

-- DB2 DB2.LUW DB2LUW
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@none NOT BETWEEN "r"."Day" AND @later

-- DB2 DB2.LUW DB2LUW
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@none NOT BETWEEN "r"."Stamp" AND @later

-- DB2 DB2.LUW DB2LUW
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@none NOT BETWEEN "r"."Day" AND @later

-- DB2 DB2.LUW DB2LUW
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@none NOT BETWEEN "r"."Stamp" AND @later

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = CAST('2020-01-02-12.00.00.000000' AS TIMESTAMP(6))
DECLARE @none Timestamp -- DateTime
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@value NOT BETWEEN "r"."Day" AND @none

-- DB2 DB2.LUW DB2LUW
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @high Timestamp(20) -- DateTime
SET     @high = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@none NOT BETWEEN "r"."Day" AND @high

-- DB2 DB2.LUW DB2LUW
DECLARE @some Timestamp(20) -- DateTime
SET     @some = CAST('2020-01-02-12.00.00.000000' AS TIMESTAMP(6))
DECLARE @none Timestamp -- DateTime
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@some NOT BETWEEN "r"."Day" AND @none

-- DB2 DB2.LUW DB2LUW
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	CASE
		WHEN CAST(@none AS timestamp) NOT BETWEEN "r"."Day" AND CAST(@later AS timestamp)
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
ORDER BY
	"r"."Id"


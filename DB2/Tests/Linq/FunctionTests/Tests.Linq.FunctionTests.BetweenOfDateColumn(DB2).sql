-- DB2 DB2.LUW DB2LUW
DECLARE @low Date(20)
SET     @low = CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6))
DECLARE @high Date(20)
SET     @high = CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6))
DECLARE @low_1 Timestamp(20) -- DateTime
SET     @low_1 = CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6))
DECLARE @high_1 Timestamp(20) -- DateTime
SET     @high_1 = CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6))

SELECT
	CAST("r"."Day" BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST("r"."Day" >= '2020-01-01-00.30.00' AND "r"."Day" <= '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("r"."Other", "r"."Day") BETWEEN CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6)) AND CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6)) AS smallint),
	CAST(Coalesce("r"."Other", "r"."Day") >= CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6)) AND Coalesce("r"."Other", "r"."Day") <= CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6)) AS smallint),
	CAST("r"."Day" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date) AS smallint),
	CAST("r"."Day" >= CAST(@low AS Date) AND "r"."Day" <= CAST(@high AS Date) AS smallint),
	CAST(Coalesce("d"."Day", '0001-01-01-00.00.00') BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("d"."Day", '0001-01-01-00.00.00') >= '2020-01-01-00.30.00' AND Coalesce("d"."Day", '0001-01-01-00.00.00') <= '2020-01-03-00.30.00' AS smallint),
	CAST("r"."Day" NOT BETWEEN CAST(@low AS Date) AND CAST(@high AS Date) AS smallint),
	CAST("r"."Day" < CAST(@low AS Date) OR "r"."Day" > CAST(@high AS Date) AS smallint),
	CAST("r"."Day" NOT BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST("r"."Day" < '2020-01-01-00.30.00' OR "r"."Day" > '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("d"."Day", '0001-01-01-00.00.00') NOT BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("d"."Day", '0001-01-01-00.00.00') < '2020-01-01-00.30.00' OR Coalesce("d"."Day", '0001-01-01-00.00.00') > '2020-01-03-00.30.00' AS smallint),
	CAST("r"."Stamp" BETWEEN CAST(@low_1 AS timestamp) AND CAST(@high_1 AS timestamp) AS smallint),
	CAST("r"."Stamp" >= CAST(@low_1 AS timestamp) AND "r"."Stamp" <= CAST(@high_1 AS timestamp) AS smallint)
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1

-- DB2 DB2.LUW DB2LUW
DECLARE @low Date(20)
SET     @low = CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6))
DECLARE @high Date(20)
SET     @high = CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" BETWEEN @low AND @high
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @low Date(20)
SET     @low = CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6))
DECLARE @high Date(20)
SET     @high = CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" >= @low AND "r"."Day" <= @high
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" NOT BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00'
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" < '2020-01-01-00.30.00' OR "r"."Day" > '2020-01-03-00.30.00'
ORDER BY
	"r"."Id"


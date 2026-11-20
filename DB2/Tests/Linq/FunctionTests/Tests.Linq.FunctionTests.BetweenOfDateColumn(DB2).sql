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
	CAST("t1"."Day_1" BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST("t1"."Day_1" >= '2020-01-01-00.30.00' AND "t1"."Day_1" <= '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("t1"."Other", "t1"."Day_1") BETWEEN CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6)) AND CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6)) AS smallint),
	CAST(Coalesce("t1"."Other", "t1"."Day_1") >= CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6)) AND Coalesce("t1"."Other", "t1"."Day_1") <= CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6)) AS smallint),
	CAST("t1"."Day_1" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date) AS smallint),
	CAST("t1"."Day_1" >= CAST(@low AS Date) AND "t1"."Day_1" <= CAST(@high AS Date) AS smallint),
	CAST(Coalesce("t1"."Day_2", '0001-01-01-00.00.00') BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("t1"."Day_2", '0001-01-01-00.00.00') >= '2020-01-01-00.30.00' AND Coalesce("t1"."Day_2", '0001-01-01-00.00.00') <= '2020-01-03-00.30.00' AS smallint),
	CAST("t1"."Day_1" NOT BETWEEN CAST(@low AS Date) AND CAST(@high AS Date) AS smallint),
	CAST("t1"."Day_1" < CAST(@low AS Date) OR "t1"."Day_1" > CAST(@high AS Date) AS smallint),
	CAST("t1"."Day_1" NOT BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST("t1"."Day_1" < '2020-01-01-00.30.00' OR "t1"."Day_1" > '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("t1"."Day_2", '0001-01-01-00.00.00') NOT BETWEEN '2020-01-01-00.30.00' AND '2020-01-03-00.30.00' AS smallint),
	CAST(Coalesce("t1"."Day_2", '0001-01-01-00.00.00') < '2020-01-01-00.30.00' OR Coalesce("t1"."Day_2", '0001-01-01-00.00.00') > '2020-01-03-00.30.00' AS smallint),
	CASE
		WHEN "t1"."Subquery" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."Subquery" >= CAST(@low AS Date) AND "t1"."Subquery" <= CAST(@high AS Date)
			THEN 1
		ELSE 0
	END,
	CAST("t1"."Stamp" BETWEEN CAST(@low_1 AS timestamp) AND CAST(@high_1 AS timestamp) AS smallint),
	CAST("t1"."Stamp" >= CAST(@low_1 AS timestamp) AND "t1"."Stamp" <= CAST(@high_1 AS timestamp) AS smallint)
FROM
	(
		SELECT
			"r"."Day" as "Day_1",
			"r"."Other",
			"d"."Day" as "Day_2",
			(
				SELECT
					MAX("x"."Day")
				FROM
					"BetweenDayRow" "x"
				WHERE
					"x"."Id" = "r"."Id"
			) as "Subquery",
			"r"."Stamp"
		FROM
			"BetweenDayRow" "r"
				LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
	) "t1"

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


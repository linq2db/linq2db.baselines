-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = CAST('2020-01-02-12.00.00.000000' AS TIMESTAMP(6))
DECLARE @high Timestamp(20) -- DateTime
SET     @high = CAST('2020-01-02-06.00.00.000000' AS TIMESTAMP(6))
DECLARE @value_1 Date(20)
SET     @value_1 = CAST('2020-01-02-12.00.00.000000' AS TIMESTAMP(6))
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	CAST(CAST(@value AS timestamp) BETWEEN "r"."Day" AND CAST(@high AS timestamp) AS smallint),
	0,
	CAST(CAST(@value AS timestamp) NOT BETWEEN "r"."Day" AND CAST(@high AS timestamp) AS smallint),
	1,
	CAST(CAST(@value AS timestamp) BETWEEN "r"."Day" AND "r"."Stamp" AS smallint),
	CAST(CAST(@value_1 AS Date) >= "r"."Day" AND CAST(@value AS timestamp) <= "r"."Stamp" AS smallint),
	CASE
		WHEN CAST(@value AS timestamp) NOT BETWEEN Coalesce("d"."Day", '0001-01-01-00.00.00') AND CAST(@later AS timestamp)
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = CAST('2020-01-02-12.00.00.000000' AS TIMESTAMP(6))
DECLARE @later Timestamp(20) -- DateTime
SET     @later = CAST('2020-01-03-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
WHERE
	@value NOT BETWEEN "d"."Day" AND @later

-- DB2 DB2.LUW DB2LUW
DECLARE @value Timestamp(20) -- DateTime
SET     @value = CAST('2020-01-02-12.00.00.000000' AS TIMESTAMP(6))
DECLARE @high Timestamp(20) -- DateTime
SET     @high = CAST('2020-01-02-06.00.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@value BETWEEN "r"."Day" AND @high OR @value >= DATE("r"."Stamp")
ORDER BY
	"r"."Id"


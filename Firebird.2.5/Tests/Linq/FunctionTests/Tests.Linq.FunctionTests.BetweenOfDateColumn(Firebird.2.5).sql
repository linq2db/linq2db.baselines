-- Firebird.2.5 Firebird
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000'
DECLARE @low_1 TimeStamp -- DateTime
SET     @low_1 = TIMESTAMP '2020-01-01 00:30:00.0000'
DECLARE @high_1 TimeStamp -- DateTime
SET     @high_1 = TIMESTAMP '2020-01-03 00:30:00.0000'

SELECT
	CASE
		WHEN "t1"."Day_1" BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Day_1" >= DATE '2020-01-01' AND "t1"."Day_1" <= DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN Coalesce("t1"."Other", "t1"."Day_1") BETWEEN TIMESTAMP '2020-01-01 00:30:00.0000' AND TIMESTAMP '2020-01-03 00:30:00.0000'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN Coalesce("t1"."Other", "t1"."Day_1") >= TIMESTAMP '2020-01-01 00:30:00.0000' AND Coalesce("t1"."Other", "t1"."Day_1") <= TIMESTAMP '2020-01-03 00:30:00.0000'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Day_1" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Day_1" >= CAST(@low AS Date) AND "t1"."Day_1" <= CAST(@high AS Date)
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN Coalesce("t1"."Day_2", DATE '0001-01-01') BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN Coalesce("t1"."Day_2", DATE '0001-01-01') >= DATE '2020-01-01' AND Coalesce("t1"."Day_2", DATE '0001-01-01') <= DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Day_1" NOT BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Day_1" < CAST(@low AS Date) OR "t1"."Day_1" > CAST(@high AS Date)
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Day_1" NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Day_1" < DATE '2020-01-01' OR "t1"."Day_1" > DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN Coalesce("t1"."Day_2", DATE '0001-01-01') NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN Coalesce("t1"."Day_2", DATE '0001-01-01') < DATE '2020-01-01' OR Coalesce("t1"."Day_2", DATE '0001-01-01') > DATE '2020-01-03'
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Subquery" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Subquery" >= CAST(@low AS Date) AND "t1"."Subquery" <= CAST(@high AS Date)
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Stamp" BETWEEN CAST(@low_1 AS TimeStamp) AND CAST(@high_1 AS TimeStamp)
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1"."Stamp" >= CAST(@low_1 AS TimeStamp) AND "t1"."Stamp" <= CAST(@high_1 AS TimeStamp)
			THEN '1'
		ELSE '0'
	END
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

-- Firebird.2.5 Firebird
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" BETWEEN @low AND @high
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" >= @low AND "r"."Day" <= @high
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" < DATE '2020-01-01' OR "r"."Day" > DATE '2020-01-03'
ORDER BY
	"r"."Id"


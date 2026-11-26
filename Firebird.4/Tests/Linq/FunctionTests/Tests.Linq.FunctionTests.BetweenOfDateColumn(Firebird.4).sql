-- Firebird.4 Firebird4
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000'
DECLARE @low_1 TimeStamp -- DateTime
SET     @low_1 = TIMESTAMP '2020-01-01 00:30:00.0000'
DECLARE @high_1 TimeStamp -- DateTime
SET     @high_1 = TIMESTAMP '2020-01-03 00:30:00.0000'

SELECT
	"r"."Day" BETWEEN DATE '2020-01-01' AND DATE '2020-01-03',
	"r"."Day" >= DATE '2020-01-01' AND "r"."Day" <= DATE '2020-01-03',
	Coalesce("r"."Other", "r"."Day") BETWEEN TIMESTAMP '2020-01-01 00:30:00.0000' AND TIMESTAMP '2020-01-03 00:30:00.0000',
	Coalesce("r"."Other", "r"."Day") >= TIMESTAMP '2020-01-01 00:30:00.0000' AND Coalesce("r"."Other", "r"."Day") <= TIMESTAMP '2020-01-03 00:30:00.0000',
	"r"."Day" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date),
	"r"."Day" >= CAST(@low AS Date) AND "r"."Day" <= CAST(@high AS Date),
	Coalesce("d"."Day", DATE '0001-01-01') BETWEEN DATE '2020-01-01' AND DATE '2020-01-03',
	Coalesce("d"."Day", DATE '0001-01-01') >= DATE '2020-01-01' AND Coalesce("d"."Day", DATE '0001-01-01') <= DATE '2020-01-03',
	"r"."Day" NOT BETWEEN CAST(@low AS Date) AND CAST(@high AS Date),
	"r"."Day" < CAST(@low AS Date) OR "r"."Day" > CAST(@high AS Date),
	"r"."Day" NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03',
	"r"."Day" < DATE '2020-01-01' OR "r"."Day" > DATE '2020-01-03',
	Coalesce("d"."Day", DATE '0001-01-01') NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03',
	Coalesce("d"."Day", DATE '0001-01-01') < DATE '2020-01-01' OR Coalesce("d"."Day", DATE '0001-01-01') > DATE '2020-01-03',
	"r"."Stamp" BETWEEN CAST(@low_1 AS TimeStamp) AND CAST(@high_1 AS TimeStamp),
	"r"."Stamp" >= CAST(@low_1 AS TimeStamp) AND "r"."Stamp" <= CAST(@high_1 AS TimeStamp)
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
ORDER BY
	"r"."Id"

-- Firebird.4 Firebird4
SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	"r"."Day" < DATE '2020-01-01' OR "r"."Day" > DATE '2020-01-03'
ORDER BY
	"r"."Id"


-- Firebird.2.5 Firebird
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000'
DECLARE @high TimeStamp -- DateTime
SET     @high = TIMESTAMP '2020-01-02 06:00:00.0000'
DECLARE @value_1 Date
SET     @value_1 = TIMESTAMP '2020-01-02 12:00:00.0000'
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	CASE
		WHEN CAST(@value AS TimeStamp) BETWEEN "r"."Day" AND CAST(@high AS TimeStamp)
			THEN '1'
		ELSE '0'
	END,
	'0',
	CASE
		WHEN CAST(@value AS TimeStamp) NOT BETWEEN "r"."Day" AND CAST(@high AS TimeStamp)
			THEN '1'
		ELSE '0'
	END,
	'1',
	CASE
		WHEN CAST(@value AS TimeStamp) BETWEEN "r"."Day" AND "r"."Stamp"
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN CAST(@value_1 AS Date) >= "r"."Day" AND CAST(@value AS TimeStamp) <= "r"."Stamp"
			THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN CAST(@value AS TimeStamp) NOT BETWEEN Coalesce("d"."Day", DATE '0001-01-01') AND CAST(@later AS TimeStamp)
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000'
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
WHERE
	CAST(@value AS TimeStamp) NOT BETWEEN "d"."Day" AND @later

-- Firebird.2.5 Firebird
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000'
DECLARE @high TimeStamp -- DateTime
SET     @high = TIMESTAMP '2020-01-02 06:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@value BETWEEN "r"."Day" AND @high OR @value >= CAST("r"."Stamp" AS Date)
ORDER BY
	"r"."Id"


-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.000000'
DECLARE @high TimeStamp -- DateTime
SET     @high = TIMESTAMP '2020-01-02 06:00:00.000000'
DECLARE @value_1 Date
SET     @value_1 = TIMESTAMP '2020-01-02 12:00:00.000000'
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	CASE
		WHEN :value BETWEEN r."Day" AND :high THEN 1
		ELSE 0
	END,
	0,
	CASE
		WHEN :value NOT BETWEEN r."Day" AND :high THEN 1
		ELSE 0
	END,
	1,
	CASE
		WHEN :value BETWEEN r."Day" AND r."Stamp" THEN 1
		ELSE 0
	END,
	CASE
		WHEN :value_1 >= r."Day" AND :value <= r."Stamp" THEN 1
		ELSE 0
	END,
	CASE
		WHEN :value NOT BETWEEN Coalesce(d."Day", DATE '0001-01-01') AND :later
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" r
		LEFT JOIN "BetweenDayRow" d ON d."Id" = r."Id" - 1
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.000000'
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
		LEFT JOIN "BetweenDayRow" d ON d."Id" = r."Id" - 1
WHERE
	:value NOT BETWEEN d."Day" AND :later

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.000000'
DECLARE @high TimeStamp -- DateTime
SET     @high = TIMESTAMP '2020-01-02 06:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:value BETWEEN r."Day" AND :high OR :value >= TRUNC(r."Stamp")
ORDER BY
	r."Id"


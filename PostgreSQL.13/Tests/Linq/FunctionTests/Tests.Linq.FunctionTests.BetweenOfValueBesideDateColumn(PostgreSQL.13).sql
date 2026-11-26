-- PostgreSQL.13 PostgreSQL12
DECLARE @value Timestamp -- DateTime2
SET     @value = '2020-01-02 12:00:00'::timestamp
DECLARE @high Timestamp -- DateTime2
SET     @high = '2020-01-02 06:00:00'::timestamp
DECLARE @value_1 Date
SET     @value_1 = '2020-01-02 12:00:00'::timestamp
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	:value BETWEEN r."Day" AND :high,
	False,
	:value NOT BETWEEN r."Day" AND :high,
	True,
	:value BETWEEN r."Day" AND r."Stamp",
	:value_1 >= r."Day" AND :value <= r."Stamp",
	CASE
		WHEN :value NOT BETWEEN Coalesce(d."Day", '0001-01-01'::date) AND :later
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" r
		LEFT JOIN "BetweenDayRow" d ON d."Id" = r."Id" - 1
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL12
DECLARE @value Timestamp -- DateTime2
SET     @value = '2020-01-02 12:00:00'::timestamp
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
		LEFT JOIN "BetweenDayRow" d ON d."Id" = r."Id" - 1
WHERE
	:value NOT BETWEEN d."Day" AND :later


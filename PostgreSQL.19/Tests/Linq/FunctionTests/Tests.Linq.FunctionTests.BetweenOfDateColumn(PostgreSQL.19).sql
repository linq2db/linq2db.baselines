-- PostgreSQL.19 PostgreSQL12
DECLARE @low Date
SET     @low = '2020-01-01 00:30:00'::timestamp
DECLARE @high Date
SET     @high = '2020-01-03 00:30:00'::timestamp
DECLARE @low_1 Timestamp -- DateTime2
SET     @low_1 = '2020-01-01 00:30:00'::timestamp
DECLARE @high_1 Timestamp -- DateTime2
SET     @high_1 = '2020-01-03 00:30:00'::timestamp

SELECT
	r."Day" BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	r."Day" >= '2020-01-01 00:30:00'::timestamp AND r."Day" <= '2020-01-03 00:30:00'::timestamp,
	Coalesce(r."Other", r."Day") BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	Coalesce(r."Other", r."Day") >= '2020-01-01 00:30:00'::timestamp AND Coalesce(r."Other", r."Day") <= '2020-01-03 00:30:00'::timestamp,
	r."Day" BETWEEN :low AND :high,
	r."Day" >= :low AND r."Day" <= :high,
	Coalesce(d."Day", '0001-01-01'::date) BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	Coalesce(d."Day", '0001-01-01'::date) >= '2020-01-01 00:30:00'::timestamp AND Coalesce(d."Day", '0001-01-01'::date) <= '2020-01-03 00:30:00'::timestamp,
	r."Day" NOT BETWEEN :low AND :high,
	r."Day" < :low OR r."Day" > :high,
	r."Day" NOT BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	r."Day" < '2020-01-01 00:30:00'::timestamp OR r."Day" > '2020-01-03 00:30:00'::timestamp,
	Coalesce(d."Day", '0001-01-01'::date) NOT BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	Coalesce(d."Day", '0001-01-01'::date) < '2020-01-01 00:30:00'::timestamp OR Coalesce(d."Day", '0001-01-01'::date) > '2020-01-03 00:30:00'::timestamp,
	r."Stamp" BETWEEN :low_1 AND :high_1,
	r."Stamp" >= :low_1 AND r."Stamp" <= :high_1
FROM
	"BetweenDayRow" r
		LEFT JOIN "BetweenDayRow" d ON d."Id" = r."Id" - 1

-- PostgreSQL.19 PostgreSQL12
DECLARE @low Date
SET     @low = '2020-01-01 00:30:00'::timestamp
DECLARE @high Date
SET     @high = '2020-01-03 00:30:00'::timestamp

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" BETWEEN :low AND :high
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
DECLARE @low Date
SET     @low = '2020-01-01 00:30:00'::timestamp
DECLARE @high Date
SET     @high = '2020-01-03 00:30:00'::timestamp

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" >= :low AND r."Day" <= :high
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" NOT BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" < '2020-01-01 00:30:00'::timestamp OR r."Day" > '2020-01-03 00:30:00'::timestamp
ORDER BY
	r."Id"


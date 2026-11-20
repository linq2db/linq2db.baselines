-- PostgreSQL.9.2 PostgreSQL
DECLARE @low Date
SET     @low = '2020-01-01 00:30:00'::timestamp
DECLARE @high Date
SET     @high = '2020-01-03 00:30:00'::timestamp
DECLARE @low_1 Timestamp -- DateTime2
SET     @low_1 = '2020-01-01 00:30:00'::timestamp
DECLARE @high_1 Timestamp -- DateTime2
SET     @high_1 = '2020-01-03 00:30:00'::timestamp

SELECT
	t1."Day_1" BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	t1."Day_1" >= '2020-01-01 00:30:00'::timestamp AND t1."Day_1" <= '2020-01-03 00:30:00'::timestamp,
	Coalesce(t1."Other", t1."Day_1") BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	Coalesce(t1."Other", t1."Day_1") >= '2020-01-01 00:30:00'::timestamp AND Coalesce(t1."Other", t1."Day_1") <= '2020-01-03 00:30:00'::timestamp,
	t1."Day_1" BETWEEN :low AND :high,
	t1."Day_1" >= :low AND t1."Day_1" <= :high,
	Coalesce(t1."Day_2", '0001-01-01'::date) BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	Coalesce(t1."Day_2", '0001-01-01'::date) >= '2020-01-01 00:30:00'::timestamp AND Coalesce(t1."Day_2", '0001-01-01'::date) <= '2020-01-03 00:30:00'::timestamp,
	t1."Day_1" NOT BETWEEN :low AND :high,
	t1."Day_1" < :low OR t1."Day_1" > :high,
	t1."Day_1" NOT BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	t1."Day_1" < '2020-01-01 00:30:00'::timestamp OR t1."Day_1" > '2020-01-03 00:30:00'::timestamp,
	Coalesce(t1."Day_2", '0001-01-01'::date) NOT BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp,
	Coalesce(t1."Day_2", '0001-01-01'::date) < '2020-01-01 00:30:00'::timestamp OR Coalesce(t1."Day_2", '0001-01-01'::date) > '2020-01-03 00:30:00'::timestamp,
	CASE
		WHEN t1."Subquery" BETWEEN :low AND :high THEN True
		ELSE False
	END,
	CASE
		WHEN t1."Subquery" >= :low AND t1."Subquery" <= :high THEN True
		ELSE False
	END,
	t1."Stamp" BETWEEN :low_1 AND :high_1,
	t1."Stamp" >= :low_1 AND t1."Stamp" <= :high_1
FROM
	(
		SELECT
			r."Day" as "Day_1",
			r."Other",
			d."Day" as "Day_2",
			(
				SELECT
					MAX(x."Day")
				FROM
					"BetweenDayRow" x
				WHERE
					x."Id" = r."Id"
			) as "Subquery",
			r."Stamp"
		FROM
			"BetweenDayRow" r
				LEFT JOIN "BetweenDayRow" d ON d."Id" = r."Id" - 1
	) t1

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" NOT BETWEEN '2020-01-01 00:30:00'::timestamp AND '2020-01-03 00:30:00'::timestamp
ORDER BY
	r."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" < '2020-01-01 00:30:00'::timestamp OR r."Day" > '2020-01-03 00:30:00'::timestamp
ORDER BY
	r."Id"


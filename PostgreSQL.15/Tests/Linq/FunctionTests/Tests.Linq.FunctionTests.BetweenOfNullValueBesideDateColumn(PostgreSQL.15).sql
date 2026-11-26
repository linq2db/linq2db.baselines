-- PostgreSQL.15 PostgreSQL12
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none BETWEEN r."Day" AND :later

-- PostgreSQL.15 PostgreSQL12
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Day" AND :later

-- PostgreSQL.15 PostgreSQL12
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Stamp" AND :later

-- PostgreSQL.15 PostgreSQL12
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Day" AND :later

-- PostgreSQL.15 PostgreSQL12
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Stamp" AND :later

-- PostgreSQL.15 PostgreSQL12
DECLARE @value Timestamp -- DateTime2
SET     @value = '2020-01-02 12:00:00'::timestamp
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:value NOT BETWEEN r."Day" AND :none

-- PostgreSQL.15 PostgreSQL12
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL
DECLARE @high Timestamp -- DateTime2
SET     @high = '2020-01-03'::date

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Day" AND :high

-- PostgreSQL.15 PostgreSQL12
DECLARE @some Timestamp -- DateTime2
SET     @some = '2020-01-02 12:00:00'::timestamp
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:some NOT BETWEEN r."Day" AND :none

-- PostgreSQL.15 PostgreSQL12
DECLARE @none Timestamp -- DateTime2
SET     @none = NULL
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-01-03'::date

SELECT
	CASE
		WHEN :none NOT BETWEEN r."Day" AND :later THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" r
ORDER BY
	r."Id"


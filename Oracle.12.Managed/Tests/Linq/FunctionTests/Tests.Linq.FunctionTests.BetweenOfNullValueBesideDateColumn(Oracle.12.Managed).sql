-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none BETWEEN r."Day" AND :later

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Day" AND :later

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Stamp" AND :later

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Day" AND :later

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Stamp" AND :later

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.000000'
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:value NOT BETWEEN r."Day" AND :none

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @high TimeStamp -- DateTime
SET     @high = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:none NOT BETWEEN r."Day" AND :high

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @some TimeStamp -- DateTime
SET     @some = TIMESTAMP '2020-01-02 12:00:00.000000'
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	:some NOT BETWEEN r."Day" AND :none

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.000000'

SELECT
	CASE
		WHEN :none NOT BETWEEN r."Day" AND :later THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" r
ORDER BY
	r."Id"


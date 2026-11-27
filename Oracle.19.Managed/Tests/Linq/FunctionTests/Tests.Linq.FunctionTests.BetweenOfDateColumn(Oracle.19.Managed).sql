-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.000000'
DECLARE @low_1 TimeStamp -- DateTime
SET     @low_1 = TIMESTAMP '2020-01-01 00:30:00.000000'
DECLARE @high_1 TimeStamp -- DateTime
SET     @high_1 = TIMESTAMP '2020-01-03 00:30:00.000000'

SELECT
	CASE
		WHEN r."Day" BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Day" >= DATE '2020-01-01' AND r."Day" <= DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."Other", r."Day") BETWEEN TIMESTAMP '2020-01-01 00:30:00.000000' AND TIMESTAMP '2020-01-03 00:30:00.000000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."Other", r."Day") >= TIMESTAMP '2020-01-01 00:30:00.000000' AND Coalesce(r."Other", r."Day") <= TIMESTAMP '2020-01-03 00:30:00.000000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Day" BETWEEN :low AND :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Day" >= :low AND r."Day" <= :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(d."Day", DATE '0001-01-01') BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(d."Day", DATE '0001-01-01') >= DATE '2020-01-01' AND Coalesce(d."Day", DATE '0001-01-01') <= DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Day" NOT BETWEEN :low AND :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Day" < :low OR r."Day" > :high THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Day" NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Day" < DATE '2020-01-01' OR r."Day" > DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(d."Day", DATE '0001-01-01') NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(d."Day", DATE '0001-01-01') < DATE '2020-01-01' OR Coalesce(d."Day", DATE '0001-01-01') > DATE '2020-01-03'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Stamp" BETWEEN :low_1 AND :high_1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."Stamp" >= :low_1 AND r."Stamp" <= :high_1 THEN 1
		ELSE 0
	END
FROM
	"BetweenDayRow" r
		LEFT JOIN "BetweenDayRow" d ON d."Id" = r."Id" - 1

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" BETWEEN :low AND :high
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.000000'

SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" >= :low AND r."Day" <= :high
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" NOT BETWEEN DATE '2020-01-01' AND DATE '2020-01-03'
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"BetweenDayRow" r
WHERE
	r."Day" < DATE '2020-01-01' OR r."Day" > DATE '2020-01-03'
ORDER BY
	r."Id"


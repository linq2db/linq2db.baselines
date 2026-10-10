-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Value" as "Value_1"
FROM
	"CoarseConvertedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2026-06-01 09:00:00.000000'

SELECT
	COUNT(*)
FROM
	"CoarseConvertedRow" r
WHERE
	r."Value" = :value

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2026-06-01 09:00:00.000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(g_1."Value") = :value
	) t1

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CoarseValue TimeStamp -- DateTime
SET     @CoarseValue = TIMESTAMP '2026-06-01 09:00:00.000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(g_1."Value") = :CoarseValue
	) t1

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @day Date
SET     @day = TIMESTAMP '2026-05-31 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MIN(g_1."Day") = :day
	) t1

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @CoarseConvertedDay Date
SET     @CoarseConvertedDay = TIMESTAMP '2026-05-31 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MIN(g_1."Day") = :CoarseConvertedDay
	) t1


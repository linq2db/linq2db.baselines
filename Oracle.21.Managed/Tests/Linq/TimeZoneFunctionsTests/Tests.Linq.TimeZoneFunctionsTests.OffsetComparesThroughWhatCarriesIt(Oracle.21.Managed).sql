-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	(
		SELECT
			CAST(EXTRACT(TIMEZONE_HOUR FROM r."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM r."Dto") AS Number(19)) * 600000000 as "Offset_1"
		FROM
			"ZonedRow" r
	) t1
WHERE
	t1."Offset_1" = :Ticks

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"ZonedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(CAST(EXTRACT(TIMEZONE_HOUR FROM g_1."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM g_1."Dto") AS Number(19)) * 600000000) = :Ticks
	) t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	"ZonedRow" a
		LEFT JOIN (
			SELECT
				b."Id",
				CAST(EXTRACT(TIMEZONE_HOUR FROM b."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM b."Dto") AS Number(19)) * 600000000 as "Offset_1"
			FROM
				"ZonedRow" b
		) b_1 ON a."Id" + 1 = b_1."Id"
WHERE
	CASE
		WHEN b_1."Id" IS NULL THEN CAST(EXTRACT(TIMEZONE_HOUR FROM a."Dto") * 60 + EXTRACT(TIMEZONE_MINUTE FROM a."Dto") AS Number(19)) * 600000000
		ELSE b_1."Offset_1"
	END = :Ticks


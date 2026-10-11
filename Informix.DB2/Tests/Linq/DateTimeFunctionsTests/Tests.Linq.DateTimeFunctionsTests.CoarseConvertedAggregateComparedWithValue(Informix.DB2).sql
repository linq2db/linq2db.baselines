-- Informix.DB2 Informix
SELECT FIRST 2
	r."Value"
FROM
	CoarseConvertedRow r

-- Informix.DB2 Informix
DECLARE @value Timestamp(16) -- DateTime
SET     @value = TO_DATE('2026-06-01 09:00:00', '%Y-%m-%d %H:%M:%S')

SELECT
	COUNT(*)
FROM
	CoarseConvertedRow r
WHERE
	r."Value" = @value

-- Informix.DB2 Informix
DECLARE @value Timestamp(16) -- DateTime
SET     @value = TO_DATE('2026-06-01 09:00:00', '%Y-%m-%d %H:%M:%S')

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1."Value") = @value
	) t1

-- Informix.DB2 Informix
DECLARE @CoarseValue Timestamp(16) -- DateTime
SET     @CoarseValue = TO_DATE('2026-06-01 09:00:00', '%Y-%m-%d %H:%M:%S')

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1."Value") = @CoarseValue
	) t1

-- Informix.DB2 Informix
DECLARE @day Date(16)
SET     @day = TO_DATE('2026-05-31', '%Y-%m-%d')

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1."Day") = @day
	) t1

-- Informix.DB2 Informix
DECLARE @CoarseConvertedDay Date(16)
SET     @CoarseConvertedDay = TO_DATE('2026-05-31', '%Y-%m-%d')

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1."Day") = @CoarseConvertedDay
	) t1


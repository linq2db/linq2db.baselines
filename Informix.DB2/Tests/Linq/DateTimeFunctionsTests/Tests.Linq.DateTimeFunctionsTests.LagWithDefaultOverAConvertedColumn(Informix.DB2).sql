-- Informix.DB2 Informix
DECLARE @fallback Timestamp(16) -- DateTime
SET     @fallback = TO_DATE('2026-05-25 09:00:00', '%Y-%m-%d %H:%M:%S')

SELECT
	LAG(r."Value", 1, @fallback::datetime year to second) OVER (ORDER BY r.Id)
FROM
	CoarseConvertedRow r
ORDER BY
	r.Id


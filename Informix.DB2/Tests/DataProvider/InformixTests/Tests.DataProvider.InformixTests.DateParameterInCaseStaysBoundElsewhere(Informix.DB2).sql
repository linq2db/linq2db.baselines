-- Informix.DB2 Informix
DECLARE @value Timestamp(16) -- DateTime
SET     @value = TO_DATE('2026-06-06 01:01:01', '%Y-%m-%d %H:%M:%S')

SELECT
	CASE
		WHEN x."Date" IS NOT NULL THEN TO_DATE('2026-06-06 01:01:01', '%Y-%m-%d %H:%M:%S')
		ELSE x.Plain
	END
FROM
	DateParameterInCaseRow x
WHERE
	x.Plain <> @value
ORDER BY
	x.Id


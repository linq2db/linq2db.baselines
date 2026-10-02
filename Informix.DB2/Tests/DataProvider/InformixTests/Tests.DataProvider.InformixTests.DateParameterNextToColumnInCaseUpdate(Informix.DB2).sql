-- Informix.DB2 Informix
UPDATE
	DateParameterInCaseRow t1
SET
	"Date" = CASE
		WHEN t1."Date" IS NOT NULL THEN TO_DATE('2026-06-06 01:01:01', '%Y-%m-%d %H:%M:%S')
		ELSE t1.Plain + Interval (1) Day to Day
	END

-- Informix.DB2 Informix
SELECT
	x."Date"
FROM
	DateParameterInCaseRow x
ORDER BY
	x.Id


-- Informix.DB2 Informix
SELECT
	CASE
		WHEN x."Date" IS NOT NULL THEN TO_DATE('2026-06-06 01:01:01', '%Y-%m-%d %H:%M:%S')
		ELSE x.Plain
	END
FROM
	DateParameterInCaseRow x
ORDER BY
	x.Id

-- Informix.DB2 Informix
SELECT
	CASE
		WHEN x."Date" IS NOT NULL THEN TO_DATE('2026-06-07 01:01:01', '%Y-%m-%d %H:%M:%S')
		ELSE x.Plain
	END
FROM
	DateParameterInCaseRow x
ORDER BY
	x.Id


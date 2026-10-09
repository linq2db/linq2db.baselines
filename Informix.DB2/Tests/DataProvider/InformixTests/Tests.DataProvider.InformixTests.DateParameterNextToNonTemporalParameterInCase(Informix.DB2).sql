-- Informix.DB2 Informix
DECLARE @text VarChar(19) -- String
SET     @text = '2021-02-03 04:05:06'

SELECT
	CASE
		WHEN x."Date" IS NOT NULL THEN TO_DATE('2026-06-06 01:01:01', '%Y-%m-%d %H:%M:%S')
		ELSE To_Date(@text)
	END
FROM
	DateParameterInCaseRow x
ORDER BY
	x.Id


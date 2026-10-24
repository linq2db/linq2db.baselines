-- Informix.DB2 Informix
SELECT
	MAX(g_1."Value")
FROM
	ScaledDecimalRow g_1
GROUP BY
	g_1.Id
UNION ALL
SELECT
	1.004::Decimal(19, 3)
FROM
	ScaledDecimalRow r

-- Informix.DB2 Informix
SELECT
	CASE
		WHEN r.Id > 0 THEN r."Value"
		ELSE r."Value" + 1
	END
FROM
	ScaledDecimalRow r
UNION ALL
SELECT
	1.004::Decimal(19, 3)
FROM
	ScaledDecimalRow r_1


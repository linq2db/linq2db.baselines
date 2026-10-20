-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	MAX(g_1."Value")
FROM
	"ScaledDecimalRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	CAST(1.004 AS Decimal(28, 10))
FROM
	"ScaledDecimalRow" r

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN r."Id" > 0 THEN r."Value"
		ELSE r."Value" + 1
	END
FROM
	"ScaledDecimalRow" r
UNION ALL
SELECT
	CAST(1.004 AS Decimal(28, 10))
FROM
	"ScaledDecimalRow" r_1


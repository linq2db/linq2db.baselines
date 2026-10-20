-- PostgreSQL.19 PostgreSQL12
SELECT
	MAX(g_1."Value")
FROM
	"ScaledDecimalRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	1.004::decimal
FROM
	"ScaledDecimalRow" r

-- PostgreSQL.19 PostgreSQL12
SELECT
	CASE
		WHEN r."Id" > 0 THEN r."Value"
		ELSE r."Value" + 1
	END
FROM
	"ScaledDecimalRow" r
UNION ALL
SELECT
	1.004::decimal
FROM
	"ScaledDecimalRow" r_1


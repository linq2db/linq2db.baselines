-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	TRUNC(CAST(r."Dto" AS timestamp(7)))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	t1."Key_1"
FROM
	(
		SELECT DISTINCT
			TRUNC(CAST(g_1."Dto" AS timestamp(7))) as "Key_1"
		FROM
			"ZonedRow" g_1
	) t1
WHERE
	ROWNUM <= 2


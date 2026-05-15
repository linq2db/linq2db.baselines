-- Oracle.11.Managed Oracle11

SELECT
	1000 - Coalesce((
		SELECT
			SUM(i."DecimalValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	), 0)
FROM
	"Outer" o
WHERE
	o."Id" = 2 AND ROWNUM <= 1


-- Oracle.11.Managed Oracle11

SELECT
	1000D - Coalesce((
		SELECT
			SUM(i."DoubleValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	), 0D)
FROM
	"Outer" o
WHERE
	o."Id" = 2 AND ROWNUM <= 1


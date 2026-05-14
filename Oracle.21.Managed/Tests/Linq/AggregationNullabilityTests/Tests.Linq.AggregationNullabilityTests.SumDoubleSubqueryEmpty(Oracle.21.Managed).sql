-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	1000D - Coalesce((
		SELECT
			SUM(i."DoubleValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	), 0D) as "c1"
FROM
	"Outer" o
WHERE
	o."Id" = 2
FETCH NEXT 1 ROWS ONLY


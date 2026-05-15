-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	o."Anchor" - Coalesce((
		SELECT
			SUM(i."DecimalValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	), 0) as "c1"
FROM
	"Outer" o
WHERE
	o."Id" = 2
FETCH NEXT 1 ROWS ONLY


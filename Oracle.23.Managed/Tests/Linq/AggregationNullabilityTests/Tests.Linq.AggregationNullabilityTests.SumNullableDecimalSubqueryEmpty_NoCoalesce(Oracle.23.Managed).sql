-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			SUM(i."DecimalValueN")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	) as "Sum_1"
FROM
	"Outer" o
WHERE
	o."Id" = 2
FETCH NEXT 1 ROWS ONLY


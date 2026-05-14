-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			AVG(i."IntValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	) as "Average"
FROM
	"Outer" o
WHERE
	o."Id" = 1
FETCH NEXT 1 ROWS ONLY


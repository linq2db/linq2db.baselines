-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			MAX(i."IntValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	) as "Max_1"
FROM
	"Outer" o
WHERE
	o."Id" = 1
FETCH NEXT 1 ROWS ONLY


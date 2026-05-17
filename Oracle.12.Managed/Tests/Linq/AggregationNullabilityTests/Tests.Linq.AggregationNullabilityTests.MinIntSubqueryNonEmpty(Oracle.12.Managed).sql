-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			MIN(i."IntValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	) as "Min_1"
FROM
	"Outer" o
WHERE
	o."Id" = 1
FETCH NEXT 1 ROWS ONLY


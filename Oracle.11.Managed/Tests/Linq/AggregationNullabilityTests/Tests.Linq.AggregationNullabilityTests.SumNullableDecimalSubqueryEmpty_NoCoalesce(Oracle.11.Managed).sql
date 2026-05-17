-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			SUM(i."DecimalValueN")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	)
FROM
	"Outer" o
WHERE
	o."Id" = 2 AND ROWNUM <= 1


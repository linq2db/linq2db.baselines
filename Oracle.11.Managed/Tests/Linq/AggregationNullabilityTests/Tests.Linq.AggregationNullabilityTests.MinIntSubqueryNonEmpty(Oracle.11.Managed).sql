-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			MIN(i."IntValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	)
FROM
	"Outer" o
WHERE
	o."Id" = 1 AND ROWNUM <= 1


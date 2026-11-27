-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	i."Id",
	i."Value" as "Value_1",
	i."GroupId",
	i."Name"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100
ORDER BY
	i."Id"
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."Id" > 100
		ORDER BY
			i."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM SYS.DUAL


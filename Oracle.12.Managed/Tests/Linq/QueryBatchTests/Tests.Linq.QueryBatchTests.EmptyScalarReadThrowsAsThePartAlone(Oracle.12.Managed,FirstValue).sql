-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	i."Id"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."Id" > 100
		FETCH NEXT 1 ROWS ONLY
	)
FROM SYS.DUAL


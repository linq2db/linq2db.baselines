-- Oracle.11.Managed Oracle11
SELECT
	i."Id"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100 AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Oracle.11.Managed Oracle11
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."Id" > 100 AND ROWNUM <= 1
	)
FROM SYS.DUAL


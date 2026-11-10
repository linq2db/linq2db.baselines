-- Oracle.11.Managed Oracle11
SELECT
	i."Id",
	i."Value",
	i."GroupId",
	i."Name"
FROM
	"BatchItem" i
WHERE
	i."Id" < 3 AND ROWNUM <= 2

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
	i."Id",
	i."Value",
	i."GroupId",
	i."Name"
FROM
	"BatchItem" i
WHERE
	i."Id" < 3


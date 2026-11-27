-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	i."Id",
	i."Value" as "Value_1",
	i."GroupId",
	i."Name"
FROM
	"BatchItem" i
WHERE
	i."Id" < 3
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	i."Id",
	i."Value",
	i."GroupId",
	i."Name"
FROM
	"BatchItem" i
WHERE
	i."Id" < 3


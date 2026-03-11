-- Oracle.11.Managed Oracle11

SELECT
	i."Id"
FROM
	"Tender" i

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name"
FROM
	"Tender" t1

-- Oracle.11.Managed Oracle11

SELECT
	r."Id"
FROM
	"Tender" r
WHERE
	r."Id" = HEXTORAW('00000000000000000000000000000000') AND
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11

SELECT
	i."Id"
FROM
	"Tender" i
WHERE
	ROWNUM <= 1


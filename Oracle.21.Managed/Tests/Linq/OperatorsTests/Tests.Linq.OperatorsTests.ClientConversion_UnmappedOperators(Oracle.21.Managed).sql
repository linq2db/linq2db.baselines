-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	i."Id"
FROM
	"Tender" i

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Tender" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id"
FROM
	"Tender" r
WHERE
	r."Id" = HEXTORAW('00000000000000000000000000000000')
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	i."Id"
FROM
	"Tender" i
FETCH NEXT 1 ROWS ONLY


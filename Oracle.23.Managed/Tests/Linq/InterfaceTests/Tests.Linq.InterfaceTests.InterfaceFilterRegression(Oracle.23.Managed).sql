-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id"
FROM
	"TransactionLine" t1
WHERE
	t1."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id"
FROM
	"TransactionLine" t1
WHERE
	t1."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @UserId Int32
SET     @UserId = 2

SELECT
	x."Id" as "UserId"
FROM
	"TransactionLine" x
WHERE
	x."Id" = :UserId
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @UserId Int32
SET     @UserId = 2

SELECT
	x."Id"
FROM
	"TransactionLine" x
WHERE
	x."Id" = :UserId
FETCH NEXT 2 ROWS ONLY


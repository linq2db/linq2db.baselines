-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	:p as "Id",
	c_1."Id" as "Id_1"
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" = :p
FETCH NEXT 1 ROWS ONLY


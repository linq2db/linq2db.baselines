-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	COUNT(*)
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" = :p


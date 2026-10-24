-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

SELECT
	MIN(c_1."Id")
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" > :p


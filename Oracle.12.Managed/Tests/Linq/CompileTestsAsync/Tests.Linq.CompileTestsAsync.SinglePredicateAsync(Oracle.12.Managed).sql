﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	:p as "Id",
	c_1."Id" as "Id_1"
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" = :p
FETCH NEXT 2 ROWS ONLY


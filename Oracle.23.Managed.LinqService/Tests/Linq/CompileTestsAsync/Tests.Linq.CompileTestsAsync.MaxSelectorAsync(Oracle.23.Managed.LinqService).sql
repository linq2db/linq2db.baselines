﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	MAX(c_1."Id")
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" > :p


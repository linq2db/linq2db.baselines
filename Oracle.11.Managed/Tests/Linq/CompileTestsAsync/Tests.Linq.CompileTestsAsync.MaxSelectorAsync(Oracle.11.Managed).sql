﻿BeforeExecute
--  Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	MAX(c_1."Id")
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" > :p


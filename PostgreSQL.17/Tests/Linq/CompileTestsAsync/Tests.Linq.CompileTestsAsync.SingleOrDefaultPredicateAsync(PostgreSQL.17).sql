﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	:p,
	c_1."Id"
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" = :p
LIMIT 2


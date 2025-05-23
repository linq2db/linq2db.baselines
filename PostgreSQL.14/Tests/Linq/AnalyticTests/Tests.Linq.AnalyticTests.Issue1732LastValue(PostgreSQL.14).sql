﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @group Integer -- Int32
SET     @group = 7

SELECT
	p."Id",
	LAST_VALUE(p."Id") OVER(ORDER BY p."Order")
FROM
	"Position" p
WHERE
	p."Group" = :group


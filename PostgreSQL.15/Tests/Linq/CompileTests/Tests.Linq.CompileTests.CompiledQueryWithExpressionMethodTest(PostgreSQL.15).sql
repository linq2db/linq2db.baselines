﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = :p
ORDER BY
	x."ParentID" DESC
LIMIT 1


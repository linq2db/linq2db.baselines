﻿BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	"a_Parent"."Value1"
FROM
	"Parent" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."Value1"
WHERE
	x."Value1" IS NULL
LIMIT 1


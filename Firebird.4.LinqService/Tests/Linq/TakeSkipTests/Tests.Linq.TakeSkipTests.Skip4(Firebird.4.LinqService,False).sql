﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC
OFFSET 3 ROWS


﻿BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC,
	"t1"."ParentID" + 1
OFFSET 3 ROWS


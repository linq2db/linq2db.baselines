﻿BeforeExecute
--  Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
FETCH NEXT 3 ROWS ONLY


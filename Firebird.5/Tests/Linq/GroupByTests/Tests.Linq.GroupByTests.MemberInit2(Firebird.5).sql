﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"


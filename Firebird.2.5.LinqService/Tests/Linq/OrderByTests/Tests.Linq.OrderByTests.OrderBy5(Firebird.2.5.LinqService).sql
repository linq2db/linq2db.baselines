﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	Mod("t1"."ChildID", 2),
	"t1"."ChildID"


﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"


﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	"selectParam"."ChildID"
FROM
	"GrandChild" "selectParam"
GROUP BY
	"selectParam"."ParentID" + 1,
	"selectParam"."ChildID"


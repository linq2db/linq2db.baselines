﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"selectParam"."ChildID",
	Avg("selectParam"."ParentID")
FROM
	"Child" "selectParam"
GROUP BY
	"selectParam"."ChildID"


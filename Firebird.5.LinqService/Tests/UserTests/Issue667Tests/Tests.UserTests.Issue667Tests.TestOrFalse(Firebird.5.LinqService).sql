﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"f"."ParentID",
	"f"."Value1"
FROM
	"Parent" "f"
WHERE
	"f"."ParentID" >= 1 OR "f"."ParentID" <= 4


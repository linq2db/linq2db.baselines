﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."Value1" + 1,
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" + 1 = 2 AND "p"."Value1" IS NOT NULL AND
	"p"."ParentID" = 1


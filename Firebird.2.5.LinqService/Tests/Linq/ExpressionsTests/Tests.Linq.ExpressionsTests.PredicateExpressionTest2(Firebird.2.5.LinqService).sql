﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1"
		INNER JOIN "Parent" "p" ON "p"."ParentID" = "c_1"."ParentID"


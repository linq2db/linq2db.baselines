﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Parent" "p"
		LEFT JOIN "Child" "o" ON "p"."ParentID" = "o"."ParentID"


﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "j" ON "p"."ParentID" = "j"."ParentID"
WHERE
	"p"."ParentID" = 1


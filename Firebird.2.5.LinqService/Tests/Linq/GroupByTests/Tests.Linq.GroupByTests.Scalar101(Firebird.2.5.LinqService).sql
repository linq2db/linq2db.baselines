﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Max("ch"."ChildID")
FROM
	"Child" "ch"
GROUP BY
	"ch"."ChildID"


﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
ORDER BY
	Mod("ch"."ChildID", 2),
	"ch"."ChildID"


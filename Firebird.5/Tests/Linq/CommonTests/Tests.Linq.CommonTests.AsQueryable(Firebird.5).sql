﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		CROSS JOIN "Child" "ch"


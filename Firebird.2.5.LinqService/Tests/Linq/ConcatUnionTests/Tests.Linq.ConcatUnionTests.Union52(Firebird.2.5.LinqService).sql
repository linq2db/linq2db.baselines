﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p1"."ParentID",
	NULL
FROM
	"Parent" "p1"
UNION
SELECT
	"p2"."ParentID",
	"p2"."Value1"
FROM
	"Parent" "p2"


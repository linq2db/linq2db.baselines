﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
UNION
SELECT
	"p2"."ParentID",
	NULL
FROM
	"Parent" "p2"


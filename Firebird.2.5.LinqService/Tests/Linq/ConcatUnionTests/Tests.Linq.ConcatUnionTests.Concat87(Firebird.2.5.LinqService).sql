﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"c_1"."ParentID",
	NULL
FROM
	"Child" "c_1"
UNION ALL
SELECT
	NULL,
	"c_2"."Value1"
FROM
	"Parent" "c_2"


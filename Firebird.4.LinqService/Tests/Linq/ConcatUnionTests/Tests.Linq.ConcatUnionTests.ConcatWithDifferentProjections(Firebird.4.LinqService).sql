﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p1"."ParentID",
	"p1"."ParentID",
	"p1"."Value1"
FROM
	"Parent" "p1"
UNION ALL
SELECT
	Coalesce("p2"."Value1", 0),
	NULL,
	NULL
FROM
	"Parent" "p2"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"


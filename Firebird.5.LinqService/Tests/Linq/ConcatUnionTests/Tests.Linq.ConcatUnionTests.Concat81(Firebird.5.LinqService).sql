﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"c_1"."ParentID",
	"c_1"."ParentID"
FROM
	"Parent" "c_1"
UNION ALL
SELECT
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Child" "c_2"


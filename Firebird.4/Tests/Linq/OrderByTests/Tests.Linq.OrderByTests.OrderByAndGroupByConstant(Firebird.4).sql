﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	COUNT(*),
	1 + MIN("g_1"."ChildID"),
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"


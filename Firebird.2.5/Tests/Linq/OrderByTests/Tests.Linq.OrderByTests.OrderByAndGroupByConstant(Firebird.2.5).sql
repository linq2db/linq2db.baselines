BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	COUNT(*),
	1 + MIN("g_1"."ChildID"),
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"


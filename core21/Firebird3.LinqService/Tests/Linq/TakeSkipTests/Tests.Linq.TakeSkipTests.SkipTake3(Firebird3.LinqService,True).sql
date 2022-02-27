BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 3

SELECT FIRST @take SKIP @skip_1
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 3

SELECT FIRST @take SKIP @skip_1
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"


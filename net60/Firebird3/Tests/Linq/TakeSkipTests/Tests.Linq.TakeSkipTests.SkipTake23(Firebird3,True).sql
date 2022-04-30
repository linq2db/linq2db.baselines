BeforeExecute
-- Firebird3 Firebird
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 5
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 3

SELECT FIRST @skip_2 SKIP @skip_3
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 5
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 3

SELECT FIRST @skip_2 SKIP @skip_3
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"


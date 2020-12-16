BeforeExecute
-- Firebird
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST @skip_1 SKIP @skip
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC

BeforeExecute
-- Firebird
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST @skip_1 SKIP @skip
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC


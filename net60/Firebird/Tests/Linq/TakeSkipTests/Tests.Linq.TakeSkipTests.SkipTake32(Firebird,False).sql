BeforeExecute
-- Firebird
DECLARE @skip_4 Integer -- Int32
SET     @skip_4 = 5
DECLARE @skip_5 Integer -- Int32
SET     @skip_5 = 2

SELECT FIRST @skip_4 SKIP @skip_5
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC

BeforeExecute
-- Firebird
DECLARE @skip_5 Integer -- Int32
SET     @skip_5 = 5
DECLARE @skip_6 Integer -- Int32
SET     @skip_6 = 2

SELECT FIRST @skip_5 SKIP @skip_6
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC


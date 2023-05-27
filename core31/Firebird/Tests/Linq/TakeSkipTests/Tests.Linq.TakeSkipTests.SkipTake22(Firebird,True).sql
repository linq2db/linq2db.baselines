BeforeExecute
-- Firebird
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 5
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 2

SELECT FIRST @skip_2 SKIP @skip_3
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC

BeforeExecute
-- Firebird
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 5
DECLARE @skip_4 Integer -- Int32
SET     @skip_4 = 2

SELECT FIRST @skip_3 SKIP @skip_4
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC


BeforeExecute
-- Firebird4 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 5
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 2

SELECT FIRST @skip SKIP @skip_1
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC

BeforeExecute
-- Firebird4 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 5
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 2

SELECT FIRST @skip SKIP @skip_1
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC


BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT SKIP @skip
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT SKIP @skip
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"


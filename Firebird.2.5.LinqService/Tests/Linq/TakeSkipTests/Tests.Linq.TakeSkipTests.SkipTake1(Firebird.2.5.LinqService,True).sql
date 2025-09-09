BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST @take SKIP @skip
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST @take SKIP @skip
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC


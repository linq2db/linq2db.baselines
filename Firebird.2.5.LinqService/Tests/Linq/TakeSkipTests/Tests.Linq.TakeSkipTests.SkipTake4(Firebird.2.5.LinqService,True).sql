BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 2
DECLARE @take Integer -- Int32
SET     @take = 7
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 1

SELECT SKIP @skip
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT FIRST @take SKIP @skip_1
			"t1"."ChildID",
			"t1"."ParentID"
		FROM
			"Child" "t1"
		ORDER BY
			"t1"."ChildID" DESC
	) "t2"
ORDER BY
	"t2"."ChildID"


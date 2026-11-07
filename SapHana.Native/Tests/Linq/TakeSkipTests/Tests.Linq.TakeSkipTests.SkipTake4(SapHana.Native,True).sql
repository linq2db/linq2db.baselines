-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 7
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 2

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT
			"t1"."ChildID",
			"t1"."ParentID"
		FROM
			"Child" "t1"
		ORDER BY
			"t1"."ChildID" DESC
		LIMIT :"take" OFFSET :"skip"
	) "t2"
ORDER BY
	"t2"."ChildID"
LIMIT 4200000000 OFFSET :"skip_1"


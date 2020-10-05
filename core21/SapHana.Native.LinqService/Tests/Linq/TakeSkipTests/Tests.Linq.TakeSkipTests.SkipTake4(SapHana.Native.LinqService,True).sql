BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 7
DECLARE @skip_1  -- Int32
SET     @skip_1 = 1
DECLARE @skip  -- Int32
SET     @skip = 2

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
		LIMIT :"take" OFFSET :"skip_1"
	) "t2"
ORDER BY
	"t2"."ChildID"
LIMIT 4200000000 OFFSET :"skip"


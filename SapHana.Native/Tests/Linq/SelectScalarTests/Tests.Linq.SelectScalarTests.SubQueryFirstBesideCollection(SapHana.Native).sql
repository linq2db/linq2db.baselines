-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
LIMIT :"take"

-- SapHana.Native SapHana
SELECT
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
		LIMIT 1
	)
FROM DUMMY


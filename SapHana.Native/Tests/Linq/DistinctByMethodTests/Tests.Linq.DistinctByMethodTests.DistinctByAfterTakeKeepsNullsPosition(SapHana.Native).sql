-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 7

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."c1" ORDER BY "e"."Value1", "e"."ParentID") as "RowNumber",
			"e"."Value1",
			"e"."ParentID"
		FROM
			(
				SELECT
					MOD("p"."ParentID", 2) as "c1",
					"p"."Value1",
					"p"."ParentID"
				FROM
					"Parent" "p"
				ORDER BY
					"p"."Value1",
					"p"."ParentID"
				LIMIT :"take"
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."Value1",
	"t1"."ParentID"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"


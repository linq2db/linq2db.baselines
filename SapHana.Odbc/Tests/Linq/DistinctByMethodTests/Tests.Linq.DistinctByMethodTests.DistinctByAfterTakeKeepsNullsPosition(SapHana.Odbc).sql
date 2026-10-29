-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 7

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD("e"."ParentID", 2) ORDER BY "e"."Value1", "e"."ParentID") as "RowNumber",
			"e"."Value1",
			"e"."ParentID"
		FROM
			(
				SELECT
					"p"."ParentID",
					"p"."Value1"
				FROM
					"Parent" "p"
				ORDER BY
					"p"."Value1",
					"p"."ParentID"
				LIMIT ?
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."Value1",
	"t1"."ParentID"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"


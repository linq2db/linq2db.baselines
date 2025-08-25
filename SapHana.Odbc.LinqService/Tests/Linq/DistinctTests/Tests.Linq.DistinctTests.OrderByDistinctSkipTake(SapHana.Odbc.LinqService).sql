BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	"t2"."F2"
FROM
	(
		SELECT DISTINCT
			"t1"."F1",
			"t1"."F2"
		FROM
			"DistinctOrderByTable" "t1"
	) "t2"
ORDER BY
	"t2"."F1"
LIMIT ? OFFSET ?


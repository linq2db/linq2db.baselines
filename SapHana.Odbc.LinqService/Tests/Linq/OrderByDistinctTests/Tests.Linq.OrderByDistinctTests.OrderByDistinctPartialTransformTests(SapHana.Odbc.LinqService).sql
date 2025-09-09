BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3
DECLARE @skip Int -- Int32
SET     @skip = 0

SELECT DISTINCT
	"x"."DuplicateData",
	"x"."OrderData2"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData2" DESC
LIMIT ? OFFSET ?


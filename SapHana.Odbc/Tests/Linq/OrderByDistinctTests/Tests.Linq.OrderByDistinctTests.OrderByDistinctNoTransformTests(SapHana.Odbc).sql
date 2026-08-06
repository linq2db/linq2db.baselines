-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 3
DECLARE @skip Int -- Int32
SET     @skip = 0

SELECT DISTINCT
	"x"."DuplicateData",
	"x"."OrderData1"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1"
LIMIT ? OFFSET ?


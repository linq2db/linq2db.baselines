BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3
DECLARE @skip Int -- Int32
SET     @skip = 0

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
LIMIT ? OFFSET ?


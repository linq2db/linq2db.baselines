-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO "ClientEvaluatedRecord"
(
	"ID"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Item1 Int -- Int32
SET     @Item1 = 5

SELECT
	"t1"."ID"
FROM
	"ClientEvaluatedRecord" "t1"
WHERE
	"t1"."ID" = ?
LIMIT 2


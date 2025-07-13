BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	"t1"."ID"
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1"."ID" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 5

SELECT
	"t1"."ID"
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1"."ID" = ?
LIMIT 2


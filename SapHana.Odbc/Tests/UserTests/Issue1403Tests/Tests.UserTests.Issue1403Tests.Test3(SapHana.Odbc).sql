-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue1403Tests_3"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_3" "t1"
LIMIT 1


BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp DateTime
SET     @TimeStamp = '2020-02-29 17:54:55.123'

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	?,
	?
)


-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @TestDate DateTime
SET     @TestDate = TIMESTAMP '2018-01-01 00:00:00.0000000'

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
VALUES
(
	?,
	?
)


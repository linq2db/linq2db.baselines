BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @TestDate DateTime
SET     @TestDate = '2018-01-01'

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


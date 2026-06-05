-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

UPSERT "Issue681Table"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

UPSERT "Issue681Table"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY


-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

UPSERT "Issue681Table"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

UPSERT "Issue681Table"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value"
)
WITH PRIMARY KEY


BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)


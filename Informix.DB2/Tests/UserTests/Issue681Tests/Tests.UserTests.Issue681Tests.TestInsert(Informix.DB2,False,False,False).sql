-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO Issue681Table
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)


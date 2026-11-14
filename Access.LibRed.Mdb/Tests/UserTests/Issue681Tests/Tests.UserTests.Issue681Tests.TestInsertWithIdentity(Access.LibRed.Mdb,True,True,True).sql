-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	@@IDENTITY


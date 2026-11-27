-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [QualifiedNameTable]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)


-- SQLite.MS SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [main].[QualifiedNameTable]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)


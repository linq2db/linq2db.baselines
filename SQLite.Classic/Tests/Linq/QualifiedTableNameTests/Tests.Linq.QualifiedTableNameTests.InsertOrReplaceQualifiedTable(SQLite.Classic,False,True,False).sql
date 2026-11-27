-- SQLite.Classic SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [main].[QualifiedNameTable] AS [t1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)
ON CONFLICT ([ID]) DO UPDATE SET
	[Value] = @Value

-- SQLite.Classic SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [main].[QualifiedNameTable] AS [t1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)
ON CONFLICT ([ID]) DO UPDATE SET
	[Value] = @Value


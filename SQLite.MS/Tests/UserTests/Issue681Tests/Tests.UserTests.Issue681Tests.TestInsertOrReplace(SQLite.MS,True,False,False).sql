-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table] AS [t1]
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

-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table] AS [t1]
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


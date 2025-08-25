BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 10
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	[main].[Issue681Table]
SET
	[Value] = @Value
WHERE
	[main].[Issue681Table].[ID] = @ID


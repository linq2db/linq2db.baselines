-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[main].[QualifiedNameTable]
SET
	[Value] = @Value
WHERE
	[main].[QualifiedNameTable].[ID] = @ID


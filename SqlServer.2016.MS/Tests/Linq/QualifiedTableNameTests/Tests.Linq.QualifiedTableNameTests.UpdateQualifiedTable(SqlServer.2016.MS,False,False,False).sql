-- SqlServer.2016.MS SqlServer.2016
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[QualifiedNameTable]
SET
	[Value] = @Value
WHERE
	[QualifiedNameTable].[ID] = @ID


-- SqlServer.2019.MS SqlServer.2019
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


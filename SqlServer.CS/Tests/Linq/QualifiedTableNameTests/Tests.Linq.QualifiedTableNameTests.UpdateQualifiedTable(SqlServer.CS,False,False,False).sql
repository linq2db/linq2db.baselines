-- SqlServer.CS SqlServer.2025
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


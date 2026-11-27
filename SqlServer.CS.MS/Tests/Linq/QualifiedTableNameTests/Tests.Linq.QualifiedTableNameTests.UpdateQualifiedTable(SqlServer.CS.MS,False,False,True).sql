-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[u]
SET
	[u].[Value] = @Value
FROM
	[dbo].[QualifiedNameTable] [u]
WHERE
	[u].[ID] = @ID


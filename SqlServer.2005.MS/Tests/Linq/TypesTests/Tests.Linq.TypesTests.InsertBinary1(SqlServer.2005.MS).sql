-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

-- SqlServer.2005.MS SqlServer.2005
DECLARE @data VarBinary(8000) -- Binary
SET     @data = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BinaryValue],
	[BoolValue]
)
VALUES
(
	1001,
	@data,
	1
)

-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000


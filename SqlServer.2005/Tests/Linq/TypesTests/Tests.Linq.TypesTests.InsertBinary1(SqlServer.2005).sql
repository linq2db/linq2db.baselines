BeforeExecute
-- SqlServer.2005

DELETE [_]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] > 1000

BeforeExecute
-- SqlServer.2005
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

BeforeExecute
-- SqlServer.2005

DELETE [_]
FROM
	[LinqDataTypes] [_]
WHERE
	[_].[ID] > 1000


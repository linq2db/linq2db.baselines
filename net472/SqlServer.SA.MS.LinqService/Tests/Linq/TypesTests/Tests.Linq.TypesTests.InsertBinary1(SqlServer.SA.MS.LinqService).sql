BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000


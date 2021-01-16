BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- SqlServer.2005
DECLARE @arr VarBinary(8000) -- Binary
SET     @arr = 0x01020304

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BoolValue],
	[BinaryValue]
)
VALUES
(
	1001,
	1,
	@arr
)

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000


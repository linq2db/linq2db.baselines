BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue VarBinary(8000) -- Binary
SET     @BinaryValue = 0x01020304
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 0

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[BoolValue],
	[GuidValue],
	[BinaryValue],
	[SmallIntValue]
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue
)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000


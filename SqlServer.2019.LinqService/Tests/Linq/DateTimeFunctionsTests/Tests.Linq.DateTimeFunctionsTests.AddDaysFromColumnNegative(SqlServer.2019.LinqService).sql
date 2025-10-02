BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = DATETIME2FROMPARTS(2018, 1, 3, 0, 0, 0, 0, 7)
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue VarBinary(8000) -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = -2
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[BoolValue],
	[GuidValue],
	[BinaryValue],
	[SmallIntValue],
	[StringValue]
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@StringValue
)

BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 5000 AND DateAdd(day, [t].[SmallIntValue], [t].[DateTimeValue]) < DATETIME2FROMPARTS(2018, 1, 2, 0, 0, 0, 0, 3)

BeforeExecute
-- SqlServer.2019 (asynchronously)

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 5000


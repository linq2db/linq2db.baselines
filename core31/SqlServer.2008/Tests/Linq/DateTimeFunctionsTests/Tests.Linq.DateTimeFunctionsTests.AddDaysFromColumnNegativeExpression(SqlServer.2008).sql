BeforeExecute
-- SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = '2018-01-03T00:00:00'
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
-- SqlServer.2008
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4
DECLARE @p1 DateTime2
SET     @p1 = '2018-01-02T00:00:00'

SELECT
	Count(*)
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 5000 AND DateAdd(day, ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue]) < @p1

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 5000


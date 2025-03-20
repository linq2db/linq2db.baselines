BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1001
DECLARE @ldt_MoneyValue Decimal(4, 0)
SET     @ldt_MoneyValue = 1000
DECLARE @ldt_SmallIntValue  -- Int16
SET     @ldt_SmallIntValue = 100

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	@ID,
	@ldt_MoneyValue,
	@ldt_SmallIntValue
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ldt_ID  -- Int32
SET     @ldt_ID = 1001

UPDATE
	[LinqDataTypes]
SET
	[MoneyValue] = 2000,
	[SmallIntValue] = 200
WHERE
	[LinqDataTypes].[ID] = @ldt_ID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ldt_ID  -- Int32
SET     @ldt_ID = 1001

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ldt_ID
LIMIT 2


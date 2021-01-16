BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = '2018-01-03'
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Blob -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = -2
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`BoolValue`,
	`GuidValue`,
	`BinaryValue`,
	`SmallIntValue`,
	`StringValue`
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
-- MySql MySql.Official MySql
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4
DECLARE @p_1 DateTime
SET     @p_1 = '2018-01-02'

SELECT
	Count(*)
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 5000 AND Date_Add(`t`.`DateTimeValue`, Interval ((`t`.`SmallIntValue` + @part1) - @part2) Day) < @p_1

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = 5000


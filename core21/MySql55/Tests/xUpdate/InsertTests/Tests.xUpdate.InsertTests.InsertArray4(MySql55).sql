BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Blob(4) -- Binary
SET     @BinaryValue = 0x01020304
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 0

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`BoolValue`,
	`GuidValue`,
	`BinaryValue`,
	`SmallIntValue`
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
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000


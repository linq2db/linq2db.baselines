BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1001

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(4, 0)
SET     @MoneyValue = 1000
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 100

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`SmallIntValue`
)
VALUES
(
	@ID,
	@MoneyValue,
	@SmallIntValue
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1001

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`MoneyValue` = 2000,
	`t`.`SmallIntValue` = 200
WHERE
	`t`.`ID` = @ID

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1001

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = @ID


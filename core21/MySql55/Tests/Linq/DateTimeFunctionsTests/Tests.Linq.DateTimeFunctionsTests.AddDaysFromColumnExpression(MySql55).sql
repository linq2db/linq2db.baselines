BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	VERSION()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySql55 MySql

SELECT
	`t`.`DateTimeValue`,
	`t`.`SmallIntValue`
FROM
	`LinqDataTypes` `t`


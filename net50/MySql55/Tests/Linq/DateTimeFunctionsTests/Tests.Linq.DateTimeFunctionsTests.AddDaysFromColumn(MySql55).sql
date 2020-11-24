BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	VERSION()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`DateTimeValue`,
	`t`.`SmallIntValue`
FROM
	`LinqDataTypes` `t`


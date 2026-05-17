-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 10
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`testdata`.`Issue681Table` `t1`
SET
	`t1`.`Value` = @Value
WHERE
	`t1`.`ID` = @ID


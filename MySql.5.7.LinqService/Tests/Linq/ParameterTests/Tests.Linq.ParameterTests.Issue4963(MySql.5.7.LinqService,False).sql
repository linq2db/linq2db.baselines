BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @offset Int32
SET     @offset = -1

UPDATE
	`Issue4963Table` `t1`
SET
	`t1`.`Field` = CAST(CAST(`t1`.`Field` AS SIGNED) + @offset AS UNSIGNED)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Field`
FROM
	`Issue4963Table` `t1`
LIMIT 2


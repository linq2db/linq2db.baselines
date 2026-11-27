-- MySql.5.7 MySql.5.7.MySql.Data MySql57
UPDATE
	`ByteFieldUpdateTable` `t1`
SET
	`t1`.`Field` = CAST(CAST(`t1`.`Field` AS SIGNED) + -1 AS UNSIGNED)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`ByteFieldUpdateTable` `t1`
LIMIT 2


-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `DurationRow`
(
	`Id`,
	`InSeconds`,
	`InTicks`,
	`Undeclared`,
	`UndeclaredSeconds`
)
VALUES
(1,4567,45670000000,45670000000,4567)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2


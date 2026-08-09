-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Int64
SET     @value = 4567
DECLARE @value_1 Int64
SET     @value_1 = 45670000000
DECLARE @value_2 Int64
SET     @value_2 = 45670000000
DECLARE @value_3 Int64
SET     @value_3 = 4567

INSERT INTO `DurationRow`
(
	`Id`,
	`InSeconds`,
	`InTicks`,
	`Undeclared`,
	`UndeclaredSeconds`
)
VALUES
(
	1,
	@value,
	@value_1,
	@value_2,
	@value_3
)
ON DUPLICATE KEY UPDATE
	`InSeconds` = @value,
	`InTicks` = @value_1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Int64
SET     @value = 19260
DECLARE @value_1 Int64
SET     @value_1 = 192600000000
DECLARE @value_2 Int64
SET     @value_2 = 192600000000
DECLARE @value_3 Int64
SET     @value_3 = 19260

INSERT INTO `DurationRow`
(
	`Id`,
	`InSeconds`,
	`InTicks`,
	`Undeclared`,
	`UndeclaredSeconds`
)
VALUES
(
	1,
	@value,
	@value_1,
	@value_2,
	@value_3
)
ON DUPLICATE KEY UPDATE
	`InSeconds` = @value,
	`InTicks` = @value_1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2


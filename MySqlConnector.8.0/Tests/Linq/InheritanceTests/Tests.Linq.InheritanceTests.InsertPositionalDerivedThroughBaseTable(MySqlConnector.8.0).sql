-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `InheritanceFilterPositional`
(
	`Id`,
	`Code`,
	`Value`
)
VALUES
(
	1,
	1,
	42
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Code`,
	`t1`.`Value`
FROM
	`InheritanceFilterPositional` `t1`
LIMIT 2


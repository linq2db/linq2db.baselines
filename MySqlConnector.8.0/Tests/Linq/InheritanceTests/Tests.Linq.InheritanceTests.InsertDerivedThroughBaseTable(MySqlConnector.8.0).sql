-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `InheritanceFilter`
(
	`Id`,
	`Code`,
	`Child1Field`
)
VALUES
(
	1,
	1,
	11
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Code`,
	`t1`.`Child1Field`
FROM
	`InheritanceFilter` `t1`
WHERE
	`t1`.`Code` IN (12, 11, 1)
LIMIT 2


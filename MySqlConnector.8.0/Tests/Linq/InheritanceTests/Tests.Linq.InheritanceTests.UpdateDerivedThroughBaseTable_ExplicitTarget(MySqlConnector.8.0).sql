-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
UPDATE
	`InheritanceFilter` `t`
SET
	`t`.`Code` = `t`.`Code`,
	`t`.`Child2Field` = 88
WHERE
	`t`.`Id` = 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`c_1`.`Id`,
	`c_1`.`Code`,
	`c_1`.`Child2Field`
FROM
	`InheritanceFilter` `c_1`
WHERE
	`c_1`.`Code` IN (22, 21, 2) AND `c_1`.`Id` = 2
LIMIT 2


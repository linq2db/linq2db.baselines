-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `TableWithIdentity`
(
	`Value`
)
VALUES
(
	123
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`
LIMIT 2


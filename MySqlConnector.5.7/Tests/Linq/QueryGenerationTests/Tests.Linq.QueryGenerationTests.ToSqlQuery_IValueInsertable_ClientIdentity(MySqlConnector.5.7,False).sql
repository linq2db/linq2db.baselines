-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Int32
SET     @value = 123

INSERT INTO `TableWithIdentity`
(
	`Id`,
	`Value`
)
VALUES
(
	543,
	@value
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`
LIMIT 2


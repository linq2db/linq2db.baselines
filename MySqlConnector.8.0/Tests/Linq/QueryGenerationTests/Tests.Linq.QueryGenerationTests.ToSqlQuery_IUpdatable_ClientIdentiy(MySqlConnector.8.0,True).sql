-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `TableWithIdentity`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`TableWithIdentity` `t1`
SET
	`t1`.`Id` = 492,
	`t1`.`Value` = 123

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`
LIMIT 2


-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `TableWithIdentitySrc`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @addition Int32
SET     @addition = 123

INSERT INTO `TableWithIdentity`
(
	`Id`,
	`Value`
)
SELECT
	345,
	`t1`.`Value` + @addition
FROM
	`TableWithIdentitySrc` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`


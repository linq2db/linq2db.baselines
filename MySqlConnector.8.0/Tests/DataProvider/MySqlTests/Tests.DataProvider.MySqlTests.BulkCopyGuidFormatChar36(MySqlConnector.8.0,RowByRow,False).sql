-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value String -- AnsiStringFixedLength
SET     @Value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO `GuidFormatTable`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Value`
FROM
	`GuidFormatTable` `t1`
LIMIT 2


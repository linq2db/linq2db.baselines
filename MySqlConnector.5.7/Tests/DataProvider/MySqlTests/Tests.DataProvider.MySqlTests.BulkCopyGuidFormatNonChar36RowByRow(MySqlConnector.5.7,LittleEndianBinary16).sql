-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Blob -- Binary
SET     @Value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO `GuidFormatTable`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Value`
FROM
	`GuidFormatTable` `t1`
LIMIT 2


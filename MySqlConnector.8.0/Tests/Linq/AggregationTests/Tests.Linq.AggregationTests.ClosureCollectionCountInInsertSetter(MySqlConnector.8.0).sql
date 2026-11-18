-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @EmptyCount Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount Int32
SET     @ItemsCount = 2

INSERT INTO `CountTarget`
(
	`Id`,
	`EmptyCount`,
	`ItemsCount`
)
VALUES
(
	1,
	@EmptyCount,
	@ItemsCount
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`EmptyCount`,
	`t1`.`ItemsCount`
FROM
	`CountTarget` `t1`
LIMIT 2


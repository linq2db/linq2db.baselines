-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`EmptyCount`,
	`t1`.`ItemsCount`
FROM
	`CountTarget` `t1`
LIMIT 2


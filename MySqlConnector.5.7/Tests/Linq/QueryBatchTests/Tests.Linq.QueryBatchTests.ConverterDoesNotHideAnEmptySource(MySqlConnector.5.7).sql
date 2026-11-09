-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Int32
SET     @Value = 100

SELECT
	`x`.`Value`
FROM
	`ConvertedItem` `x`
WHERE
	`x`.`Value` > @Value
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
-- Command 1
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`ConvertedItem` `t1`

-- Command 2
DECLARE @Value Int32
SET     @Value = 100

SELECT
	`t1`.`Item1`,
	`t1`.`Item1_1`
FROM
	(
		SELECT
			1 as `c1`
	) `t2`
		LEFT JOIN (
			SELECT
				1 as `Item1`,
				`x`.`Value` as `Item1_1`
			FROM
				`ConvertedItem` `x`
			WHERE
				`x`.`Value` > @Value
			LIMIT 1
		) `t1` ON 1=1

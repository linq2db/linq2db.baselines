-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`i`.`Id`,
	`i`.`Value`,
	`i`.`GroupId`,
	`i`.`Name`
FROM
	`BatchItem` `i`
WHERE
	`i`.`Id` < 3
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
-- Command 1
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`GroupId`,
	`t1`.`Name`
FROM
	`BatchItem` `t1`

-- Command 2
SELECT
	`i`.`Id`,
	`i`.`Value`,
	`i`.`GroupId`,
	`i`.`Name`
FROM
	`BatchItem` `i`
WHERE
	`i`.`Id` < 3

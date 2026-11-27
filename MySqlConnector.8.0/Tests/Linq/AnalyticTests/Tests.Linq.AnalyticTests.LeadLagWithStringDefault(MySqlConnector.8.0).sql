-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	LEAD(`p`.`ProcessName`, 1, 'None') OVER (ORDER BY `p`.`ProcessID`)
FROM
	`ProcessNameRecord` `p`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	LAG(`p`.`ProcessName`, 1, 'None') OVER (ORDER BY `p`.`ProcessID`)
FROM
	`ProcessNameRecord` `p`


-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	LEAD(`p`.`ProcessName`, 2) OVER (ORDER BY `p`.`ProcessID`)
FROM
	`ProcessNameRecord` `p`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	LEAD(`p`.`ProcessName`) OVER (ORDER BY `p`.`ProcessID`)
FROM
	`ProcessNameRecord` `p`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	LAG(`p`.`ProcessName`, 2) OVER (ORDER BY `p`.`ProcessID`)
FROM
	`ProcessNameRecord` `p`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	LAG(`p`.`ProcessName`) OVER (ORDER BY `p`.`ProcessID`)
FROM
	`ProcessNameRecord` `p`


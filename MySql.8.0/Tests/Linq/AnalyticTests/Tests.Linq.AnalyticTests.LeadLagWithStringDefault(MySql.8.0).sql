-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	LEAD(`p`.`ProcessName`, 1, 'None') OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	LAG(`p`.`ProcessName`, 1, 'None') OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`


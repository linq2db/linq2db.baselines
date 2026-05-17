-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`grp`.`SiteID`,
	COUNT(*),
	COUNT(CASE
		WHEN NOT `grp`.`Active` THEN 1
		ELSE NULL
	END)
FROM
	`Issue1078Table` `grp`
GROUP BY
	`grp`.`SiteID`


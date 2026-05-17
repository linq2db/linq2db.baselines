-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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


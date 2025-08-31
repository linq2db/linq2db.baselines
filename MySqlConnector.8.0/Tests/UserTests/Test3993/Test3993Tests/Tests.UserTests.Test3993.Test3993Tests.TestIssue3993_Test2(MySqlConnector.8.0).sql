BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`,
	`x`.`NotificationDateTime`
FROM
	(
		SELECT
			`t`.`Status`,
			Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime`,
			`t`.`StartDateTime`,
			`t`.`StartDateTime2`,
			`t`.`EndDateTime`,
			`t`.`PreNotification`,
			`t`.`PreNotification2`,
			`t`.`PreNotification3`,
			`t`.`StrField`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	(`x`.`Status` <> 'New' OR `x`.`Status` IS NULL) AND
	(`x`.`Status` <> 'Completed' OR `x`.`Status` IS NULL) AND
	`x`.`NotificationDateTime` < '2025-08-31 18:07:32.930' AND
	Date(`x`.`StartDateTime`) < Date('2025-08-31 18:07:32.931')


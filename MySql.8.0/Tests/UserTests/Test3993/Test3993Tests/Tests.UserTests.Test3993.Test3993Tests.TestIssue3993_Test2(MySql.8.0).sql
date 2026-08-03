-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime`,
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
	`x`.`NotificationDateTime` < UTC_TIMESTAMP() AND
	Date(`x`.`StartDateTime`) < Date(UTC_TIMESTAMP())


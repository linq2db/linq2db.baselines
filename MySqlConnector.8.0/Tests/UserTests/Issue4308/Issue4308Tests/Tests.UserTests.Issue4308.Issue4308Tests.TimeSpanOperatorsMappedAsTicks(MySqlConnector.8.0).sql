-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`StartDateTime`,
	`t1`.`EndDateTime`,
	`t1`.`RequiredDateTime`,
	`t1`.`PreNotification`,
	`t1`.`RequiredInterval`
FROM
	`Common_Topology_Locations` `t1`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Date_Add(Date_Add(`row_1`.`StartDateTime`, Interval ((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`row_1`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond),
	Date_Add(Date_Add(`row_1`.`RequiredDateTime`, Interval ((CAST(`row_1`.`RequiredInterval` AS SIGNED) - (CAST(`row_1`.`RequiredInterval` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`row_1`.`RequiredInterval` AS SIGNED) % 864000000000) / 10) Microsecond),
	Date_Add(Date_Add(`row_1`.`StartDateTime`, Interval ((CAST(`row_1`.`RequiredInterval` AS SIGNED) - (CAST(`row_1`.`RequiredInterval` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`row_1`.`RequiredInterval` AS SIGNED) % 864000000000) / 10) Microsecond),
	Date_Add(Date_Add(`row_1`.`RequiredDateTime`, Interval ((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`row_1`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond),
	Date_Add(Date_Add(`row_1`.`StartDateTime`, Interval (-((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`row_1`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond),
	-`row_1`.`PreNotification`,
	TIMESTAMPDIFF(MICROSECOND, `row_1`.`StartDateTime`, `row_1`.`EndDateTime`) * 10,
	TIMESTAMPDIFF(MICROSECOND, `row_1`.`RequiredDateTime`, `row_1`.`EndDateTime`) * 10,
	TIMESTAMPDIFF(MICROSECOND, `row_1`.`StartDateTime`, `row_1`.`RequiredDateTime`) * 10
FROM
	`Common_Topology_Locations` `row_1`
LIMIT 2


-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)
FROM
	`Common_Topology_Locations` `t`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`StartDateTime`,
	`t1`.`StartDateTime2`,
	`t1`.`EndDateTime`,
	`t1`.`PreNotification`,
	`t1`.`PreNotification2`,
	`t1`.`PreNotification3`,
	`t1`.`StrField`,
	`t1`.`Status`
FROM
	`Common_Topology_Locations` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Extract(year from `x`.`StartDateTime2`) = 2023

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int64
SET     @p = 3000000000

SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Date_Add(Date_Add(`x`.`StartDateTime2`, Interval ((CAST(@p AS SIGNED) - (CAST(@p AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(@p AS SIGNED) % 864000000000) / 10) Microsecond) > UTC_TIMESTAMP()

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int64
SET     @p = 31536000000000000

SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Date_Add(Date_Add(`x`.`StartDateTime2`, Interval ((CAST(@p AS SIGNED) - (CAST(@p AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(@p AS SIGNED) % 864000000000) / 10) Microsecond) > UTC_TIMESTAMP()

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(CAST(`x`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000,
	CAST(CAST(`x`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000000
FROM
	`Common_Topology_Locations` `x`
WHERE
	CAST(CAST(`x`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000000 < CAST(CAST(`x`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`NotificationDateTime8`,
	`x`.`NotificationDateTime9`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification2` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification3` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime5`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval ((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime6`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime7`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime8`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) - (CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime9`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`NotificationDateTime8`,
	`x`.`NotificationDateTime9`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification2` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification3` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime5`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval ((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime6`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime7`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime8`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) - (CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime9`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime2` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`NotificationDateTime8`,
	`x`.`NotificationDateTime9`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification2` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification3` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime5`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval ((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime6`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime7`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime8`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) - (CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime9`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime4` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`NotificationDateTime8`,
	`x`.`NotificationDateTime9`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime5`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification2` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification3` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval ((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime6`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime7`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime8`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) - (CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime9`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime5` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`NotificationDateTime8`,
	`x`.`NotificationDateTime9`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval ((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime6`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification2` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification3` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime5`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime7`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime8`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) - (CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime9`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime6` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`NotificationDateTime8`,
	`x`.`NotificationDateTime9`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime7`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification2` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification3` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime5`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval ((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime6`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime8`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) - (CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime9`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime7` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`,
	`x`.`NotificationDateTime`,
	`x`.`NotificationDateTime2`,
	`x`.`NotificationDateTime3`,
	`x`.`NotificationDateTime4`,
	`x`.`NotificationDateTime5`,
	`x`.`NotificationDateTime6`,
	`x`.`NotificationDateTime7`,
	`x`.`NotificationDateTime8`,
	`x`.`NotificationDateTime9`,
	`x`.`Day_1`
FROM
	(
		SELECT
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime8`,
			`t`.`StartDateTime`,
			`t`.`PreNotification`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification2` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`t`.`StartDateTime`, Interval ((-1 * (CAST(CAST(`t`.`PreNotification3` AS SIGNED) AS DOUBLE) / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime5`,
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval ((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime6`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime7`,
			Date_Add(Date_Add(`t`.`StartDateTime2`, Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) - (CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000) Day), Interval ((CAST(-`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime9`,
			Extract(day from `t`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime8` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`NotificationDateTime4`
FROM
	(
		SELECT
			Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification3` AS SIGNED) - (CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification3` AS SIGNED) % 864000000000) / 10) Microsecond) as `NotificationDateTime4`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`NotificationDateTime4` < '2020-02-29 17:54:55.123'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `t`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `x`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int64
SET     @p = 180000000000

SELECT
	`x`.`diff`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10 as `diff`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`diff` < @p

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `x`
WHERE
	CAST(CAST(TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10 AS SIGNED) AS DOUBLE) / 36000000000 < 5

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int64
SET     @p = 72000000000

SELECT
	`x`.`diff`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10 as `diff`
		FROM
			`Common_Topology_Locations` `t`
	) `x`
WHERE
	`x`.`diff` < @p

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `x`
WHERE
	CAST(CAST(TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10 AS SIGNED) AS DOUBLE) / 36000000000 < 2


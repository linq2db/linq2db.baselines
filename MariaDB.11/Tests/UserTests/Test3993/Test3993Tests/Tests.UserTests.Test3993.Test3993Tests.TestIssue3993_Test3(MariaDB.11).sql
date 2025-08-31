BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`
WHERE
	Extract(hour from Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)) = 13
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`
WHERE
	Extract(minute from Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)) = 51
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`
WHERE
	Extract(second from Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)) >= 52 AND
	Extract(second from Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)) <= 54
LIMIT 1


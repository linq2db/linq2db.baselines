-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)
FROM
	`Common_Topology_Locations` `t`
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)
FROM
	`Common_Topology_Locations` `t`
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)
FROM
	`Common_Topology_Locations` `t`
WHERE
	Extract(hour from Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)) = 13
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)
FROM
	`Common_Topology_Locations` `t`
WHERE
	Extract(minute from Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)) = 51
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`,
	Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)
FROM
	`Common_Topology_Locations` `t`
WHERE
	Extract(second from Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)) >= 52 AND
	Extract(second from Date_Add(Date_Add(`t`.`StartDateTime`, Interval (-((CAST(`t`.`PreNotification` AS SIGNED) - (CAST(`t`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000)) Day), Interval (-(CAST(`t`.`PreNotification` AS SIGNED) % 864000000000) / 10) Microsecond)) <= 54
LIMIT 1


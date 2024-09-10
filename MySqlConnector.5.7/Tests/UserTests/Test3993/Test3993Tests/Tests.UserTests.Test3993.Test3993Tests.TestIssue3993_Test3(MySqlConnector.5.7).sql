BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Common_Topology_Locations`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Common_Topology_Locations`
(
	`StartDateTime`    DATETIME          NULL,
	`StartDateTime2`   DATETIME      NOT NULL,
	`EndDateTime`      DATETIME          NULL,
	`PreNotification`  BIGINT            NULL,
	`PreNotification2` BIGINT            NULL,
	`PreNotification3` BIGINT        NOT NULL,
	`StrField`         DATETIME          NULL,
	`Status`           VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p1 Int64
SET     @p1 = 145820000000
DECLARE @p2 Int64
SET     @p2 = 0

INSERT INTO `Common_Topology_Locations`
(
	`StartDateTime`,
	`StartDateTime2`,
	`EndDateTime`,
	`PreNotification`,
	`PreNotification2`,
	`PreNotification3`,
	`StrField`,
	`Status`
)
VALUES
('2020-02-29 17:54:55.123','0001-01-01',NULL,@p1,NULL,@p2,NULL,NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`StartDateTime`,
	`t1`.`StartDateTime2`,
	`t1`.`EndDateTime`,
	`t1`.`PreNotification`,
	`t1`.`PreNotification2`,
	`t1`.`PreNotification3`,
	`t1`.`StrField`,
	`t1`.`Status`,
	`t1`.`NotificationDateTime`
FROM
	(
		SELECT
			Extract(second from Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond)) as `Second_1`,
			`x`.`StartDateTime`,
			`x`.`StartDateTime2`,
			`x`.`EndDateTime`,
			`x`.`PreNotification`,
			`x`.`PreNotification2`,
			`x`.`PreNotification3`,
			`x`.`StrField`,
			`x`.`Status`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime`
		FROM
			`Common_Topology_Locations` `x`
	) `t1`
WHERE
	`t1`.`Second_1` >= 52 AND `t1`.`Second_1` <= 54
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Common_Topology_Locations`


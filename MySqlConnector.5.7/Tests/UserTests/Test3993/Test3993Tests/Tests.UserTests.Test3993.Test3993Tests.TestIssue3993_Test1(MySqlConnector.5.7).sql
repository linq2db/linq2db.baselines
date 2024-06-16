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
SET     @p1 = 200000000000
DECLARE @p2 Int64
SET     @p2 = 200000000000
DECLARE @p3 Int64
SET     @p3 = 200000000000

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
('2020-02-29 17:54:55.123','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p1,@p2,@p3,'2020-02-29',NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Date_Add(`t`.`StartDateTime`, Interval ((-`t`.`PreNotification` / 10000) * 1000) Microsecond)
FROM
	`Common_Topology_Locations` `t`

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
	`t1`.`Status`
FROM
	`Common_Topology_Locations` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int64
SET     @p = 300000
DECLARE @UtcNow Datetime -- DateTime
SET     @UtcNow = '2024-06-16 23:57:29.336'

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
	Date_Add(`x`.`StartDateTime2`, Interval (@p * 1000) Microsecond) > @UtcNow

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int64
SET     @p = 3153600000000
DECLARE @UtcNow Datetime -- DateTime
SET     @UtcNow = '2024-06-16 23:57:29.341'

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
	Date_Add(`x`.`StartDateTime2`, Interval (@p * 1000) Microsecond) > @UtcNow

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`t1`,
	`x_1`.`t2`
FROM
	(
		SELECT
			CAST(`x`.`PreNotification` / 10000000 AS DECIMAL(29, 10)) as `t2`,
			CAST(`x`.`PreNotification` / 10000 AS DECIMAL(29, 10)) as `t1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`t2` < `x_1`.`t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime4Utc Datetime -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`NotificationDateTime_1`,
	`x_1`.`PreNotification`,
	`x_1`.`NotificationDateTime`,
	`x_1`.`NotificationDateTime2`,
	`x_1`.`NotificationDateTime3`,
	`x_1`.`NotificationDateTime4`,
	`x_1`.`NotificationDateTime5`,
	`x_1`.`NotificationDateTime6`,
	`x_1`.`NotificationDateTime7`,
	`x_1`.`NotificationDateTime8`,
	`x_1`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			`x`.`StartDateTime` as `NotificationDateTime_1`,
			`x`.`PreNotification`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`x`.`StartDateTime`, Interval ((`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime8`,
			Extract(day from `x`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime` < @DateTime4Utc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime4Utc Datetime -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`NotificationDateTime2_1`,
	`x_1`.`PreNotification`,
	`x_1`.`NotificationDateTime`,
	`x_1`.`NotificationDateTime2`,
	`x_1`.`NotificationDateTime3`,
	`x_1`.`NotificationDateTime4`,
	`x_1`.`NotificationDateTime5`,
	`x_1`.`NotificationDateTime6`,
	`x_1`.`NotificationDateTime7`,
	`x_1`.`NotificationDateTime8`,
	`x_1`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			`x`.`StartDateTime` as `NotificationDateTime2_1`,
			`x`.`PreNotification`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`x`.`StartDateTime`, Interval ((`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime8`,
			Extract(day from `x`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime2` < @DateTime4Utc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime4Utc Datetime -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`StartDateTime`,
	`x_1`.`PreNotification`,
	`x_1`.`NotificationDateTime`,
	`x_1`.`NotificationDateTime2`,
	`x_1`.`NotificationDateTime3`,
	`x_1`.`NotificationDateTime4`,
	`x_1`.`NotificationDateTime5`,
	`x_1`.`NotificationDateTime6`,
	`x_1`.`NotificationDateTime7`,
	`x_1`.`NotificationDateTime8`,
	`x_1`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			`x`.`StartDateTime`,
			`x`.`PreNotification`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`x`.`StartDateTime`, Interval ((`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime8`,
			Extract(day from `x`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime4` < @DateTime4Utc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime4Utc Datetime -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`StartDateTime`,
	`x_1`.`PreNotification`,
	`x_1`.`NotificationDateTime`,
	`x_1`.`NotificationDateTime2`,
	`x_1`.`NotificationDateTime3`,
	`x_1`.`NotificationDateTime4`,
	`x_1`.`NotificationDateTime5`,
	`x_1`.`NotificationDateTime6`,
	`x_1`.`NotificationDateTime7`,
	`x_1`.`NotificationDateTime8`,
	`x_1`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			`x`.`StartDateTime`,
			`x`.`PreNotification`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`x`.`StartDateTime`, Interval ((`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime8`,
			Extract(day from `x`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime5` < @DateTime4Utc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime4Utc Datetime -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`StartDateTime`,
	`x_1`.`PreNotification`,
	`x_1`.`NotificationDateTime`,
	`x_1`.`NotificationDateTime2`,
	`x_1`.`NotificationDateTime3`,
	`x_1`.`NotificationDateTime4`,
	`x_1`.`NotificationDateTime5`,
	`x_1`.`NotificationDateTime6`,
	`x_1`.`NotificationDateTime7`,
	`x_1`.`NotificationDateTime8`,
	`x_1`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime`, Interval ((`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			`x`.`StartDateTime`,
			`x`.`PreNotification`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime8`,
			Extract(day from `x`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime6` < @DateTime4Utc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime4Utc Datetime -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`StartDateTime`,
	`x_1`.`PreNotification`,
	`x_1`.`NotificationDateTime`,
	`x_1`.`NotificationDateTime2`,
	`x_1`.`NotificationDateTime3`,
	`x_1`.`NotificationDateTime4`,
	`x_1`.`NotificationDateTime5`,
	`x_1`.`NotificationDateTime6`,
	`x_1`.`NotificationDateTime7`,
	`x_1`.`NotificationDateTime8`,
	`x_1`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			`x`.`StartDateTime`,
			`x`.`PreNotification`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`x`.`StartDateTime`, Interval ((`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime8`,
			Extract(day from `x`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime7` < @DateTime4Utc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime4Utc Datetime -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`StartDateTime`,
	`x_1`.`PreNotification`,
	`x_1`.`NotificationDateTime`,
	`x_1`.`NotificationDateTime2`,
	`x_1`.`NotificationDateTime3`,
	`x_1`.`NotificationDateTime4`,
	`x_1`.`NotificationDateTime5`,
	`x_1`.`NotificationDateTime6`,
	`x_1`.`NotificationDateTime7`,
	`x_1`.`NotificationDateTime8`,
	`x_1`.`Day_1`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime8`,
			`x`.`StartDateTime`,
			`x`.`PreNotification`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification` / 10000)) * 1000) Microsecond) as `NotificationDateTime`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification2` / 10000)) * 1000) Microsecond) as `NotificationDateTime2`,
			Date_Add(`x`.`StartDateTime`, Interval ((-1 * (`x`.`PreNotification3` / 10000)) * 1000) Microsecond) as `NotificationDateTime3`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime5`,
			Date_Add(`x`.`StartDateTime`, Interval ((`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime6`,
			Date_Add(`x`.`StartDateTime2`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime7`,
			Extract(day from `x`.`StrField`) as `Day_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime8` < @DateTime4Utc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`x_1`.`NotificationDateTime4`
FROM
	(
		SELECT
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification3` / 10000) * 1000) Microsecond) as `NotificationDateTime4`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`NotificationDateTime4` < @DateTimeUtc

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `t`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10
FROM
	`Common_Topology_Locations` `x`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int64
SET     @p = 180000000000

SELECT
	`x_1`.`diff`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10 as `diff`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`diff` < @p

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`Value_1`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10 as `Value_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	CAST(`x_1`.`Value_1` / 36000000000 AS DECIMAL(29, 10)) < 5

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int64
SET     @p = 72000000000

SELECT
	`x_1`.`diff`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10 as `diff`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	`x_1`.`diff` < @p

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`Value_1`
FROM
	(
		SELECT
			TIMESTAMPDIFF(MICROSECOND, `x`.`StartDateTime`, `x`.`EndDateTime`) * 10 as `Value_1`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	CAST(`x_1`.`Value_1` / 36000000000 AS DECIMAL(29, 10)) < 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Common_Topology_Locations`


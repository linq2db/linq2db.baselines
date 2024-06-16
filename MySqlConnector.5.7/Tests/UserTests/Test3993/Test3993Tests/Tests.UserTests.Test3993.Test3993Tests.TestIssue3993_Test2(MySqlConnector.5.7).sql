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
DECLARE @p4 Int64
SET     @p4 = 6048000000000
DECLARE @p5 Int64
SET     @p5 = 200000000000
DECLARE @p6 Int64
SET     @p6 = 200000000000

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
('2020-02-29 17:54:55.123','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p1,@p2,@p3,'2020-02-29',NULL),
('2023-10-17 09:40:23','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p4,@p5,@p6,'2020-02-29',NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @UtcNow Datetime -- DateTime
SET     @UtcNow = '2024-06-16 23:57:29.498'
DECLARE @Date Datetime -- DateTime
SET     @Date = '2024-06-16'

SELECT
	`x_1`.`StartDateTime`,
	`x_1`.`StartDateTime2`,
	`x_1`.`EndDateTime`,
	`x_1`.`PreNotification`,
	`x_1`.`PreNotification2`,
	`x_1`.`PreNotification3`,
	`x_1`.`StrField`,
	`x_1`.`Status`,
	`x_1`.`NotificationDateTime`
FROM
	(
		SELECT
			`x`.`Status`,
			Date_Add(`x`.`StartDateTime`, Interval ((-`x`.`PreNotification` / 10000) * 1000) Microsecond) as `NotificationDateTime`,
			Date(`x`.`StartDateTime`) as `Date_1`,
			`x`.`StartDateTime`,
			`x`.`StartDateTime2`,
			`x`.`EndDateTime`,
			`x`.`PreNotification`,
			`x`.`PreNotification2`,
			`x`.`PreNotification3`,
			`x`.`StrField`
		FROM
			`Common_Topology_Locations` `x`
	) `x_1`
WHERE
	(`x_1`.`Status` <> 'New' OR `x_1`.`Status` IS NULL) AND
	(`x_1`.`Status` <> 'Completed' OR `x_1`.`Status` IS NULL) AND
	`x_1`.`NotificationDateTime` < @UtcNow AND
	`x_1`.`Date_1` < @Date

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Common_Topology_Locations`


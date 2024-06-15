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
DECLARE @StartDateTime Datetime -- DateTime
SET     @StartDateTime = '2020-02-29 17:54:55.123'
DECLARE @StartDateTime2 Datetime -- DateTime
SET     @StartDateTime2 = '2020-02-29 17:54:55.123'
DECLARE @EndDateTime Datetime -- DateTime
SET     @EndDateTime = '2020-02-29 21:54:55.123'
DECLARE @PreNotification Int64
SET     @PreNotification = 200000000000
DECLARE @PreNotification2 Int64
SET     @PreNotification2 = 200000000000
DECLARE @PreNotification3 Int64
SET     @PreNotification3 = 200000000000
DECLARE @StrField Datetime -- DateTime
SET     @StrField = '2020-02-29'
DECLARE @Status VarChar -- String
SET     @Status = NULL

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
(
	@StartDateTime,
	@StartDateTime2,
	@EndDateTime,
	@PreNotification,
	@PreNotification2,
	@PreNotification3,
	@StrField,
	@Status
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @StartDateTime Datetime -- DateTime
SET     @StartDateTime = '2023-10-17 09:40:23'
DECLARE @StartDateTime2 Datetime -- DateTime
SET     @StartDateTime2 = '2020-02-29 17:54:55.123'
DECLARE @EndDateTime Datetime -- DateTime
SET     @EndDateTime = '2020-02-29 21:54:55.123'
DECLARE @PreNotification Int64
SET     @PreNotification = 6048000000000
DECLARE @PreNotification2 Int64
SET     @PreNotification2 = 200000000000
DECLARE @PreNotification3 Int64
SET     @PreNotification3 = 200000000000
DECLARE @StrField Datetime -- DateTime
SET     @StrField = '2020-02-29'
DECLARE @Status VarChar -- String
SET     @Status = NULL

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
(
	@StartDateTime,
	@StartDateTime2,
	@EndDateTime,
	@PreNotification,
	@PreNotification2,
	@PreNotification3,
	@StrField,
	@Status
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @UtcNow Datetime -- DateTime
SET     @UtcNow = '2024-06-15 08:20:59.776'
DECLARE @Date Datetime -- DateTime
SET     @Date = '2024-06-15'

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


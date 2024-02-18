BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
DECLARE @UtcNow Datetime -- DateTime
SET     @UtcNow = '2024-02-18 08:37:01.198'
DECLARE @Date Datetime -- DateTime
SET     @Date = '2024-02-18'

SELECT
	`t`.`StartDateTime`,
	`t`.`StartDateTime2`,
	`t`.`EndDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StrField`,
	`t`.`Status`
FROM
	`Common_Topology_Locations` `t`
WHERE
	(`t`.`Status` <> 'New' OR `t`.`Status` IS NULL) AND
	(`t`.`Status` <> 'Completed' OR `t`.`Status` IS NULL) AND
	Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` * -1 / 10000) * 1000) Microsecond) < @UtcNow AND
	Cast(`t`.`StartDateTime` as Date) < @Date

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`


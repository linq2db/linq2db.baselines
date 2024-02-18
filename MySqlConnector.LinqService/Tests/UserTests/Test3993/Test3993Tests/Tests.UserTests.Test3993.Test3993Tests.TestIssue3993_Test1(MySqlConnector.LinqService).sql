BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

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
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @p Int64
SET     @p = 300000
DECLARE @UtcNow Datetime -- DateTime
SET     @UtcNow = '2024-02-18 08:33:28.643'

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
-- MySqlConnector MySql
DECLARE @p Int64
SET     @p = 3153600000000
DECLARE @UtcNow Datetime -- DateTime
SET     @UtcNow = '2024-02-18 08:33:28.648'

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
-- MySqlConnector MySql

SELECT
	`x`.`PreNotification`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Cast((`x`.`PreNotification` / 10000000) as Decimal(29, 10)) < Cast((`x`.`PreNotification` / 10000) as Decimal(29, 10))

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StartDateTime2`,
	`t`.`StrField`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification` / 10000)) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StartDateTime2`,
	`t`.`StrField`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime`, Interval ((-1 * (`t`.`PreNotification2` / 10000)) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StartDateTime2`,
	`t`.`StrField`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification3` * -1 / 10000) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StartDateTime2`,
	`t`.`StrField`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` * -1 / 10000) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StartDateTime2`,
	`t`.`StrField`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification` / 10000) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StartDateTime2`,
	`t`.`StrField`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime2`, Interval ((`t`.`PreNotification` * -1 / 10000) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification`,
	`t`.`PreNotification2`,
	`t`.`PreNotification3`,
	`t`.`StartDateTime2`,
	`t`.`StrField`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime2`, Interval ((`t`.`PreNotification3` * -1 / 10000) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql
DECLARE @DateTimeUtc Datetime -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification3`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime`, Interval ((`t`.`PreNotification3` * -1 / 10000) * 1000) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`x`.`EndDateTime`,
	`x`.`StartDateTime`
FROM
	`Common_Topology_Locations` `x`

BeforeExecute
-- MySqlConnector MySql
DECLARE @p Int64
SET     @p = 180000000000

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`
WHERE
	(TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10) < @p

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Cast(((TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10) / 36000000000) as Decimal(29, 10)) < 5

BeforeExecute
-- MySqlConnector MySql
DECLARE @p Int64
SET     @p = 72000000000

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`
WHERE
	(TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10) < @p

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Cast(((TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10) / 36000000000) as Decimal(29, 10)) < 2

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`


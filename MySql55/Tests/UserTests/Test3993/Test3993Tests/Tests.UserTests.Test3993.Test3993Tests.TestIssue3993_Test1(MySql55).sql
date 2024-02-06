BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql
DECLARE @p Int64
SET     @p = 300000000
DECLARE @UtcNow DateTime
SET     @UtcNow = '2024-02-06 20:57:23.622'

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
	Date_Add(`x`.`StartDateTime2`, Interval @p Microsecond) > @UtcNow

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p Int64
SET     @p = 3153600000000000
DECLARE @UtcNow DateTime
SET     @UtcNow = '2024-02-06 20:57:23.625'

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
	Date_Add(`x`.`StartDateTime2`, Interval @p Microsecond) > @UtcNow

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`x`.`PreNotification`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Cast((`x`.`PreNotification` / 10000000) as Decimal(29, 10)) < Cast((`x`.`PreNotification` / 10000) as Decimal(29, 10))

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
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
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
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
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
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
	Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification3` * -1 / 10) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
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
	Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification` * -1 / 10) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
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
	Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification` / 10) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
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
	Date_Add(`t`.`StartDateTime2`, Interval (`t`.`PreNotification` * -1 / 10) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
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
	Date_Add(`t`.`StartDateTime2`, Interval (`t`.`PreNotification3` * -1 / 10) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @DateTimeUtc DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	`t`.`StartDateTime`,
	`t`.`PreNotification3`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification3` * -1 / 10) Microsecond) < @DateTimeUtc

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Cast(((TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10) / 36000000000) as Decimal(29, 10)) < 5

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

SELECT
	`t`.`EndDateTime`,
	`t`.`StartDateTime`
FROM
	`Common_Topology_Locations` `t`
WHERE
	Cast(((TIMESTAMPDIFF(MICROSECOND, `t`.`StartDateTime`, `t`.`EndDateTime`) * 10) / 36000000000) as Decimal(29, 10)) < 2

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`


BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
DECLARE @UtcNow DateTime
SET     @UtcNow = '2024-02-06 20:58:25.551'
DECLARE @Date DateTime
SET     @Date = '2024-02-06'

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
	Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification` * -1 / 10) Microsecond) < @UtcNow AND
	Cast(`t`.`StartDateTime` as Date) < @Date

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`


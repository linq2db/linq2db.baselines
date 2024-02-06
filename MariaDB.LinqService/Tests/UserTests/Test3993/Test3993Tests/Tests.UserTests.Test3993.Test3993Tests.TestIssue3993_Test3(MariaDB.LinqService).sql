BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql
DECLARE @StartDateTime Datetime -- DateTime
SET     @StartDateTime = '2020-02-29 17:54:55.123'
DECLARE @StartDateTime2 Datetime -- DateTime
SET     @StartDateTime2 = '0001-01-01'
DECLARE @EndDateTime Datetime -- DateTime
SET     @EndDateTime = NULL
DECLARE @PreNotification Int64
SET     @PreNotification = 145820000000
DECLARE @PreNotification2 Int64
SET     @PreNotification2 = NULL
DECLARE @PreNotification3 Int64
SET     @PreNotification3 = 0
DECLARE @StrField Datetime -- DateTime
SET     @StrField = NULL
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
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

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
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`StartDateTime`,
	`x`.`PreNotification`
FROM
	`Common_Topology_Locations` `x`
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

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
	Extract(hour from Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification` * -1 / 10) Microsecond)) = 13
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

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
	Extract(minute from Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification` * -1 / 10) Microsecond)) = 51
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

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
	Extract(second from Date_Add(`t`.`StartDateTime`, Interval (`t`.`PreNotification` * -1 / 10) Microsecond)) = 53
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Common_Topology_Locations`


﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1855Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1855Table`
(
	`Id`                         INT       NOT NULL,
	`SomeDateTimeOffset`         TIMESTAMP NOT NULL,
	`SomeNullableDateTimeOffset` TIMESTAMP     NULL,

	CONSTRAINT `PK_Issue1855Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'
DECLARE @SomeNullableDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

INSERT INTO `Issue1855Table`
(
	`Id`,
	`SomeDateTimeOffset`,
	`SomeNullableDateTimeOffset`
)
VALUES
(
	@Id,
	@SomeDateTimeOffset,
	@SomeNullableDateTimeOffset
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

INSERT INTO `Issue1855Table`
(
	`Id`,
	`SomeDateTimeOffset`
)
VALUES
(
	@Id,
	@SomeDateTimeOffset
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @interval Int32
SET     @interval = 10
DECLARE @clientSideIn Datetime -- DateTimeOffset
SET     @clientSideIn = '2019-08-08T08:08:18.0000000+00:00'

SELECT
	`r`.`Id`,
	`r`.`SomeDateTimeOffset`,
	`r`.`SomeNullableDateTimeOffset`
FROM
	`Issue1855Table` `r`
WHERE
	Date_Add(`r`.`SomeNullableDateTimeOffset`, Interval @interval Second) >= @clientSideIn AND
	Date_Add(`r`.`SomeNullableDateTimeOffset`, Interval @interval Second) IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1855Table`


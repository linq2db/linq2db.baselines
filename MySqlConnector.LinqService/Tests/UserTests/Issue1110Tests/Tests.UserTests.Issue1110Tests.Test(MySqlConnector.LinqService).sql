﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1110TB`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1110TB`
(
	`Id`        INT      NOT NULL,
	`TimeStamp` DATETIME NOT NULL,

	CONSTRAINT `PK_Issue1110TB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 10
DECLARE @TimeStamp Datetime -- DateTime
SET     @TimeStamp = '2020-02-29 17:54:55.123'

INSERT INTO `Issue1110TB`
(
	`Id`,
	`TimeStamp`
)
VALUES
(
	@Id,
	@TimeStamp
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1110TB`


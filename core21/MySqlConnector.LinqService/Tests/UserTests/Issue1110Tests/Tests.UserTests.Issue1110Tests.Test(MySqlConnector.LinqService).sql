BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1110TB`
(
	`Id`        INT      NOT NULL,
	`TimeStamp` DATETIME NOT NULL,

	CONSTRAINT `PK_Issue1110TB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 10
DECLARE @TimeStamp_1 Datetime -- DateTime
SET     @TimeStamp_1 = '2020-02-29 17:54:55.123'

INSERT INTO `Issue1110TB`
(
	`Id`,
	`TimeStamp`
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1110TB`


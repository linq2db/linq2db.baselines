BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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


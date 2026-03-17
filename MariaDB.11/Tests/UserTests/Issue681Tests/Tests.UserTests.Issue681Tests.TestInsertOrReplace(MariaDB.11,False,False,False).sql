-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `Issue681Table`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value
)
ON DUPLICATE KEY UPDATE
	`Value` = @Value

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `Issue681Table`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value
)
ON DUPLICATE KEY UPDATE
	`Value` = @Value


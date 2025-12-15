-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `TableWithIdentitySrc`
(
	`Value`
)
VALUES
(
	@Value
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @addition Int32
SET     @addition = 123

INSERT INTO `TableWithIdentity`
(
	`Value`
)
SELECT
	`t1`.`Value` + @addition
FROM
	`TableWithIdentitySrc` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`


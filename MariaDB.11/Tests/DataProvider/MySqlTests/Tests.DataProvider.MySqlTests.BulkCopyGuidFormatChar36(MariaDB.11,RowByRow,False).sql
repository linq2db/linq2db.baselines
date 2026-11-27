-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value String -- AnsiStringFixedLength
SET     @Value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO `GuidFormatTable`
(
	`Value`
)
VALUES
(
	@Value
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Value`
FROM
	`GuidFormatTable` `t1`
LIMIT 2


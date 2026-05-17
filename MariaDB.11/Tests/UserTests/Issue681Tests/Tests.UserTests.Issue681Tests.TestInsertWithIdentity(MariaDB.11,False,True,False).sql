-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `testdata`.`Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT LAST_INSERT_ID()


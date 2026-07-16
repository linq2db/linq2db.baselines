-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
-- Value = 10
INSERT INTO `testdata`.`Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = `t1`.`Value` = 0 OR `t1`.`Value` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Value`
FROM
	`TestBool` `r`
ORDER BY
	`r`.`Id`


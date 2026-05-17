-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @param Int32
SET     @param = 1

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
WHERE
	`t`.`Value1` = @param


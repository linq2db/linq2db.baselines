-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`p`.`Value1`
FROM
	`Parent` `p`
ORDER BY
	`p`.`Value1`
LIMIT @take

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`


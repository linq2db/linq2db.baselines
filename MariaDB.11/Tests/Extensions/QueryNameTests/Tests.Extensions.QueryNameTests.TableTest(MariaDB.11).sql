-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ QB_NAME(PARENT) */
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`


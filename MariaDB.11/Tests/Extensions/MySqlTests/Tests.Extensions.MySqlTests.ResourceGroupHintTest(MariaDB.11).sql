BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT /*+ RESOURCE_GROUP(USR_default) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`


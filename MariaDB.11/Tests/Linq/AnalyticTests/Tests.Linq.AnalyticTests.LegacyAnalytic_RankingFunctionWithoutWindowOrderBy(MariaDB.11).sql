-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	ROW_NUMBER() OVER (PARTITION BY `p`.`Value1`)
FROM
	`Parent` `p`


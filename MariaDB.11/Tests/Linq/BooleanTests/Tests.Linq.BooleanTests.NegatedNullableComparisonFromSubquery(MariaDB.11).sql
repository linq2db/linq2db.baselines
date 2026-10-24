-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	`x`.`Value1` <> 1 OR `x`.`Value1` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	NOT (`x`.`Value1` = 1 AND `x`.`Value1` IS NOT NULL)


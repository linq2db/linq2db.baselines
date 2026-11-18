-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Id`,
	`e`.`Item`,
	`e`.`Flag`
FROM
	`NestedInListEntity` `e`
WHERE
	(`e`.`Flag`) = (`e`.`Id` = `e`.`Item` AND `e`.`Item` IS NOT NULL OR `e`.`Id` = 5)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Item`,
	`t1`.`Flag`
FROM
	`NestedInListEntity` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Id`,
	`e`.`Item`,
	`e`.`Flag`
FROM
	`NestedInListEntity` `e`
WHERE
	(`e`.`Flag`) <> (`e`.`Id` = `e`.`Item` AND `e`.`Item` IS NOT NULL OR `e`.`Id` = 5)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Item`,
	`t1`.`Flag`
FROM
	`NestedInListEntity` `t1`


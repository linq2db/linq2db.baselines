-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	ROW_NUMBER() OVER (ORDER BY `item_1`.`Id`) - 1,
	`item_1`.`Id`,
	`item_1`.`TestId`
FROM
	`TestTable` `item_1`
WHERE
	`item_1`.`TestId` <> 20
ORDER BY
	`item_1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	`TestTable` `t1`


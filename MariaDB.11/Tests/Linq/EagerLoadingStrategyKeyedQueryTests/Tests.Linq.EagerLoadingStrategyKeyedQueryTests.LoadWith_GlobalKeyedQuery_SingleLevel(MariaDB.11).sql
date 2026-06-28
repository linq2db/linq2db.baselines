-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Company` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) `k_1`
		INNER JOIN `Department` `d` ON `k_1`.`item` = `d`.`CompanyId`


-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
SELECT
	`m_1`.`Id`,
	`m_1`.`Name`,
	`d`.`Id`,
	CONCAT(Coalesce(`m_1`.`Name`, ''), ' / ', Coalesce(`d`.`Name`, ''))
FROM
	`Company` `m_1`
		INNER JOIN `Department` `d` ON `d`.`CompanyId` = `m_1`.`Id`
ORDER BY
	`d`.`Id`,
	`m_1`.`Id`

-- Batch 2
SELECT
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`

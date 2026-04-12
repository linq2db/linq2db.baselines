-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Id`,
	`m_1`.`Name`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	`Company` `m_1`
		INNER JOIN `Department` `d` ON `d`.`CompanyId` = `m_1`.`Id` AND `d`.`Name` LIKE Concat(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(`m_1`.`Name`, '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]'), '%') ESCAPE '~'
ORDER BY
	`d`.`Id`,
	`m_1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`


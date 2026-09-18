-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`ItemId`,
	`d`.`Log`
FROM
	`Item` `m_1`
		INNER JOIN `ItemLog` `d` ON `m_1`.`Id` = `d`.`ItemId`
ORDER BY
	`d`.`Id`,
	`m_1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`Item` `i`
ORDER BY
	`i`.`Id`


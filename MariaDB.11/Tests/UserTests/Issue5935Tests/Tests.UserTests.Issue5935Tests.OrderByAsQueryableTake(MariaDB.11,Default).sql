-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`m_1`.`Id`,
	`d_1`.`Id`,
	`d_1`.`ItemId`,
	`d_1`.`Log`
FROM
	`Item` `m_1`
		INNER JOIN (
			SELECT
				`d`.`Id`,
				`d`.`ItemId`,
				`d`.`Log`,
				ROW_NUMBER() OVER (PARTITION BY `d`.`ItemId` ORDER BY `d`.`Id` DESC) as `rn`
			FROM
				`ItemLog` `d`
		) `d_1` ON `m_1`.`Id` = `d_1`.`ItemId` AND `d_1`.`rn` <= 2
ORDER BY
	`m_1`.`Id`,
	`d_1`.`Id` DESC

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`Item` `i`
ORDER BY
	`i`.`Id`


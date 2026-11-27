-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`m_1`.`Id`,
	`a_Tags`.`Id`,
	`a_Tags`.`LogId`,
	`a_Tags`.`Name`
FROM
	`EagerOrderItem` `m_1`
		INNER JOIN `EagerOrderItemLog` `d` ON `m_1`.`Id` = `d`.`ItemId`
		INNER JOIN `EagerOrderItemTag` `a_Tags` ON `d`.`Id` = `a_Tags`.`LogId`
ORDER BY
	`d`.`Id` DESC,
	`m_1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`EagerOrderItem` `i`
ORDER BY
	`i`.`Id`


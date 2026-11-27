-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`contract`.`Id`,
	`servProj`.`IdContract`
FROM
	`ProjectionServiceTable` `servProj`
		INNER JOIN `ProjectionContractTable` `contract` ON `servProj`.`IdContract` = `contract`.`Id`


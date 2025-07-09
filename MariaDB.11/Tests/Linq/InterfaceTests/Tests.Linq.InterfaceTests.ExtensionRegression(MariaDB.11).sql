BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT DISTINCT
	`a_Child`.`ID`
FROM
	`ExtensionTable1` `r`
		INNER JOIN `ExtensionTable2` `a_Child` ON `r`.`FK` = `a_Child`.`ID`


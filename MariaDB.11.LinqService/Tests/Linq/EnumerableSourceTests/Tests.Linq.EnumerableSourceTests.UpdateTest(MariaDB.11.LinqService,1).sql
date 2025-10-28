BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

UPDATE
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 2 AS `Id`, 'Janet Updated' AS `Value`
			UNION ALL
			SELECT 3, 'Doe Updated') `r` ON `t`.`Id` = `r`.`Id`
SET
	`t`.`Value` = `r`.`Value`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`


BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainOptional`,
	`MainTable` `t1`
		INNER JOIN `AssociatedTable` `a_AssociatedOptional` ON `t1`.`Id` = `a_AssociatedOptional`.`Id`
SET
	`a_MainOptional`.`Field` = 'test'
WHERE
	`t1`.`Id` = @id AND `a_AssociatedOptional`.`Id` = `a_MainOptional`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`


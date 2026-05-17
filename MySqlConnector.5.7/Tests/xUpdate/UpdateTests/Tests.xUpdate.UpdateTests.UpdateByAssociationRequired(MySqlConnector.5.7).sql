-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainRequired`,
	`MainTable` `t1`
		INNER JOIN `AssociatedTable` `a_AssociatedRequired` ON `t1`.`Id` = `a_AssociatedRequired`.`Id`
SET
	`a_MainRequired`.`Field` = 'test'
WHERE
	`t1`.`Id` = @id AND `a_AssociatedRequired`.`Id` = `a_MainRequired`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`


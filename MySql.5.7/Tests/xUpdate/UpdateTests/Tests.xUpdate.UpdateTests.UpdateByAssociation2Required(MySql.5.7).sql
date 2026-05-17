-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainRequired`,
	`AssociatedTable` `p`
SET
	`a_MainRequired`.`Field` = 'test'
WHERE
	`p`.`Id` = @id AND `p`.`Id` = `a_MainRequired`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`


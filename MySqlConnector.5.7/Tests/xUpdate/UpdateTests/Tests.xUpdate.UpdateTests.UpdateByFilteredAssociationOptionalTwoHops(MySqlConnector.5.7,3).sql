-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 3

UPDATE
	`FilteredMainTable` `a_MainOptional`,
	`FilteredMainTable` `m_1`
		INNER JOIN `FilteredAssociatedTable` `a_AssociatedOptional` ON `m_1`.`Id` = `a_AssociatedOptional`.`Id` AND `a_AssociatedOptional`.`Flag`
SET
	`a_MainOptional`.`Field` = 'test'
WHERE
	`m_1`.`Id` = @id AND `a_AssociatedOptional`.`Id` = `a_MainOptional`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`m_1`.`Field`
FROM
	`FilteredMainTable` `m_1`
ORDER BY
	`m_1`.`Id`


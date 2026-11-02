-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 2

UPDATE
	`FilteredAssociatedTable` `a_AssociatedOptional`,
	`FilteredMainTable` `m_1`
SET
	`a_AssociatedOptional`.`Note` = 'test'
WHERE
	`m_1`.`Id` = @id AND `m_1`.`Id` = `a_AssociatedOptional`.`Id` AND
	`a_AssociatedOptional`.`Flag`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`a`.`Note`
FROM
	`FilteredAssociatedTable` `a`
ORDER BY
	`a`.`Id`


-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`a`.`Note`
FROM
	`FilteredAssociatedTable` `a`
ORDER BY
	`a`.`Id`


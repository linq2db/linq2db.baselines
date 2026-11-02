-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 3

UPDATE
	`NullableKeyMainTable` `a_MainOptional`,
	`NullableKeyMainTable` `m_1`
		LEFT JOIN `NullableKeyAssociatedTable` `a_AssociatedOptional` ON `m_1`.`Ref` = `a_AssociatedOptional`.`Ref` OR `m_1`.`Ref` IS NULL AND `a_AssociatedOptional`.`Ref` IS NULL
SET
	`a_MainOptional`.`Field` = 'test'
WHERE
	`m_1`.`Id` = @id AND (`a_AssociatedOptional`.`Ref` = `a_MainOptional`.`Ref` OR `a_AssociatedOptional`.`Ref` IS NULL AND `a_MainOptional`.`Ref` IS NULL)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`m_1`.`Field`
FROM
	`NullableKeyMainTable` `m_1`
ORDER BY
	`m_1`.`Id`


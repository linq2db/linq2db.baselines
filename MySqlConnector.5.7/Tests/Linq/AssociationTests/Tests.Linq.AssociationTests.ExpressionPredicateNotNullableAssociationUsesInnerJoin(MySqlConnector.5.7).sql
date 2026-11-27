-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`a_Client1`.`Name`
FROM
	`ExpressionAssociationService` `s`
		INNER JOIN `ExpressionAssociationClient` `a_Client1` ON `s`.`IdClient` = `a_Client1`.`Id`


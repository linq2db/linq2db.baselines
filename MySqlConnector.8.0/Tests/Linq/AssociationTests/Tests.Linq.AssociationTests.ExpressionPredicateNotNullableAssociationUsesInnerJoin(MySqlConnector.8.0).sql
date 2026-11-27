-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`a_Client1`.`Name`
FROM
	`ExpressionAssociationService` `s`
		INNER JOIN `ExpressionAssociationClient` `a_Client1` ON `s`.`IdClient` = `a_Client1`.`Id`


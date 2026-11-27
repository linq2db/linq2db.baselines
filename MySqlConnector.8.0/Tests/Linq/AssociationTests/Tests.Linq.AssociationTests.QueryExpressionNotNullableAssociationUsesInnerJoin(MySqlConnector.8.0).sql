-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`a_Client2`.`Name`
FROM
	`ExpressionAssociationService` `s`
		INNER JOIN `ExpressionAssociationClient` `a_Client2` ON `a_Client2`.`Id` = `s`.`IdClient`


-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`a_Client2`.`Name`
FROM
	`ExpressionAssociationService` `s`
		INNER JOIN `ExpressionAssociationClient` `a_Client2` ON `a_Client2`.`Id` = `s`.`IdClient`


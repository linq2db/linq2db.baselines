-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`a_Client2`.`Name`
FROM
	`ExpressionAssociationService` `s`
		INNER JOIN `ExpressionAssociationClient` `a_Client2` ON `a_Client2`.`Id` = `s`.`IdClient`


BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p1`.`FirstName`,
	`p1`.`PersonID`,
	`p1`.`LastName`,
	`p1`.`MiddleName`,
	`p1`.`Gender`,
	`g_1`.`FirstName`,
	`g_1`.`PersonID`,
	`g_1`.`LastName`,
	`g_1`.`MiddleName`,
	`g_1`.`Gender`
FROM
	`Person` `p1`
		LEFT JOIN `Person` `g_1` ON `p1`.`PersonID` = `g_1`.`PersonID`


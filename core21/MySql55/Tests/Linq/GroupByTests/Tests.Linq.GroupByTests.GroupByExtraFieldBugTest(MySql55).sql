BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`p`.`LastName`
FROM
	`Doctor` `d`
		INNER JOIN `Person` `p` ON `d`.`PersonID` = `p`.`PersonID`
GROUP BY
	`p`.`LastName`


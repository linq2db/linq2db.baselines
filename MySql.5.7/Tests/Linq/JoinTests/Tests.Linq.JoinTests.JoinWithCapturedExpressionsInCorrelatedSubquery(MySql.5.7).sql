-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`PersonID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Patient` `pa`
				INNER JOIN `Person` `pe` ON `pa`.`PersonID` = `pe`.`PersonID`
		WHERE
			`pa`.`PersonID` = `p`.`PersonID`
	)
FROM
	`Person` `p`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`


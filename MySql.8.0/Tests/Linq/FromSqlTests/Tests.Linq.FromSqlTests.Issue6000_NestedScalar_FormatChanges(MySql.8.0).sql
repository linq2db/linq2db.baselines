-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (
		SELECT
			`t1`.`value`
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) `t1`(`value`)
	)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (
		SELECT
			`t1`.`value`
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 2
			) `t1`(`value`)
	)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (
		SELECT
			`t1`.`value`
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) `t1`(`value`)
	)


-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`o`.`PersonID`,
	`o`.`Gender`
FROM
	`Person` `o`
WHERE
	`o`.`PersonID` IN (1, 2, 3, 4)
ORDER BY
	`o`.`PersonID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`o`.`PersonID`,
	`o`.`Gender`
FROM
	`Person` `o`
WHERE
	`o`.`PersonID` IN (1, 2, 3, 4)
ORDER BY
	`o`.`PersonID`


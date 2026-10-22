-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) `t1`(`value`)
		WHERE
			`p`.`MiddleName` = `t1`.`value` OR `p`.`MiddleName` IS NULL AND `t1`.`value` IS NULL
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) `t1`(`value`)
		WHERE
			`p`.`MiddleName` = `t1`.`value` OR `p`.`MiddleName` IS NULL AND `t1`.`value` IS NULL
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) `t1`(`value`)
		WHERE
			`p`.`MiddleName` = `t1`.`value` OR `p`.`MiddleName` IS NULL AND `t1`.`value` IS NULL
	)


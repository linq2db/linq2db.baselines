-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
			) `t1`
		WHERE
			`p`.`MiddleName` = `t1`.`value` OR `p`.`MiddleName` IS NULL AND `t1`.`value` IS NULL
	)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
			) `t1`
		WHERE
			`p`.`MiddleName` = `t1`.`value` OR `p`.`MiddleName` IS NULL AND `t1`.`value` IS NULL
	)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
			) `t1`
		WHERE
			`p`.`MiddleName` = `t1`.`value` OR `p`.`MiddleName` IS NULL AND `t1`.`value` IS NULL
	)


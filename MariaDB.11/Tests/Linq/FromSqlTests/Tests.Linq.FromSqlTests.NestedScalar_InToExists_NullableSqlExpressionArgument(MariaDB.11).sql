-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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


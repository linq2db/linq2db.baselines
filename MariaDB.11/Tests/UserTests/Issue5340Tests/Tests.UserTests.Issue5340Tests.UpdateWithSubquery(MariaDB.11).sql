-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`OuterTable` `t1`
SET
	`t1`.`Field1` = (
		SELECT
			`y`.`Field4`
		FROM
			`InnerTable` `y`
		WHERE
			`t1`.`Field2` = `y`.`Field3`
		ORDER BY
			`y`.`Field4`
		LIMIT 1
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Field1`,
	`t1`.`Field2`
FROM
	`OuterTable` `t1`
ORDER BY
	`t1`.`Id`


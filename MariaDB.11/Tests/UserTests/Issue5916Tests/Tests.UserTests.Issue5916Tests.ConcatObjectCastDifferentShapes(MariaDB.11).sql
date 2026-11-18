-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST('p_' AS CHAR(255)),
	`p`.`PersonID`,
	CAST('X' AS CHAR(255)),
	`p`.`FirstName`,
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS CHAR(255))
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` > 2
UNION ALL
SELECT
	NULL,
	CAST(NULL AS SIGNED),
	NULL,
	CAST(NULL AS CHAR(255)),
	CAST('c_' AS CHAR(255)),
	`p_1`.`PersonID`,
	CAST('X' AS CHAR(255)),
	`p_1`.`FirstName`,
	`p_1`.`LastName`
FROM
	`Person` `p_1`
WHERE
	`p_1`.`PersonID` <= 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`


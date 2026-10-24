-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST('p_' AS CHAR(255)),
	`e`.`Id`,
	CAST('N' AS CHAR(255)),
	`e`.`Name`
FROM
	`ConcatSetOpEntity` `e`
WHERE
	`e`.`ParentId` IS NULL
UNION ALL
SELECT
	CAST('c_' AS CHAR(255)),
	`e_1`.`Id`,
	CAST('N' AS CHAR(255)),
	`e_1`.`Name`
FROM
	`ConcatSetOpEntity` `e_1`
WHERE
	`e_1`.`ParentId` IS NOT NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`ParentId`,
	`t1`.`Name`
FROM
	`ConcatSetOpEntity` `t1`


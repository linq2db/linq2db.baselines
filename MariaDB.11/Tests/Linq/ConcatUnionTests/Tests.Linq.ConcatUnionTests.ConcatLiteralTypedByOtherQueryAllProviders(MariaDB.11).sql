-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`Id`,
	`p`.`Str`
FROM
	`SetLiteralTypingTable` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	CAST('str' AS CHAR(255))
FROM
	`SetLiteralTypingTable` `p_1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`Id`,
	CAST('str' AS CHAR(255))
FROM
	`SetLiteralTypingTable` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	`p_1`.`Str`
FROM
	`SetLiteralTypingTable` `p_1`


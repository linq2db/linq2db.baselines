-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`Id`,
	CAST('str1' AS CHAR(255))
FROM
	`SetLiteralTypingTable` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	CAST('str2' AS CHAR(255))
FROM
	`SetLiteralTypingTable` `p_1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`Id`,
	CAST('str2' AS CHAR(255))
FROM
	`SetLiteralTypingTable` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	CAST('str1' AS CHAR(255))
FROM
	`SetLiteralTypingTable` `p_1`


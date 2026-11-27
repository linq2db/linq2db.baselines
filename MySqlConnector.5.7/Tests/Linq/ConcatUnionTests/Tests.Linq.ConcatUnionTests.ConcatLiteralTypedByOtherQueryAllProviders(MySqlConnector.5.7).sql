-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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


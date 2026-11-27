-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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


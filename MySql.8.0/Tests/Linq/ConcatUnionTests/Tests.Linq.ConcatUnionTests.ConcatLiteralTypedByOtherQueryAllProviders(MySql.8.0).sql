-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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


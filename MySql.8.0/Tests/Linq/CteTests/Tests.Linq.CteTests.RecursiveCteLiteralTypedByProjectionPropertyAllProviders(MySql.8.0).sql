-- MySql.8.0 MySql.8.0.MySql.Data MySql80
WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		CAST('Str1' AS CHAR(255))
	FROM
		`CteLiteralTypingTable` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		CAST('Str2' AS CHAR(255))
	FROM
		`cte` `t1`
			INNER JOIN `CteLiteralTypingTable` `r` ON `t1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t2`.`Id`,
	`t2`.`Str`
FROM
	`cte` `t2`


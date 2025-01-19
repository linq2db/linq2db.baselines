﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		`p`.`Str`
	FROM
		`Issue3360Table` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		CAST('Str' AS CHAR(255))
	FROM
		`cte` `t1`,
		`Issue3360Table` `r`
	WHERE
		`t1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t2`.`Id`,
	`t2`.`Str`
FROM
	`cte` `t2`


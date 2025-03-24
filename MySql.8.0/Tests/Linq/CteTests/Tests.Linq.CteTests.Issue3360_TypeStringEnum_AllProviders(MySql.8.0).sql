﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		`p`.`Str`
	FROM
		`Issue3360WithEnum` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		CAST('THIS_IS_TWO' AS CHAR(50))
	FROM
		`cte` `t1`
			INNER JOIN `Issue3360WithEnum` `r` ON `t1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t2`.`Id`,
	`t2`.`Str`
FROM
	`cte` `t2`


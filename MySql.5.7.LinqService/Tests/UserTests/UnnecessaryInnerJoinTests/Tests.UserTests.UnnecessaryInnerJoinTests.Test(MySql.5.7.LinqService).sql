﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Field2`
FROM
	`Table2` `t1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Table1` `x`
		WHERE
			`t1`.`Field2` = `x`.`Field2` AND CAST(`x`.`Field1` AS SIGNED) IN (1, 2, 3)
	)


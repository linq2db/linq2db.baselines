﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @n Int32
SET     @n = 2

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = `p`.`ParentID`
	) + @n
FROM
	`Parent` `p`


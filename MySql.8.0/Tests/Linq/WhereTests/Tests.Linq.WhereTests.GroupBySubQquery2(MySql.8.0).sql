﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` IN (
		SELECT
			MAX(`x_1`.`ChildID`)
		FROM
			`Child` `x_1`
		GROUP BY
			`x_1`.`ParentID`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` IN (
		SELECT
			MAX(`x_1`.`ChildID`)
		FROM
			`Child` `x_1`
		GROUP BY
			`x_1`.`ParentID`
	)

